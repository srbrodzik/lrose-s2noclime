#!/usr/bin/python3

import sys
import os
import netCDF4 as nc
import shutil
import datetime
from datetime import date
from datetime import datetime
from datetime import timezone
import glob
import gzip

gribDir = '/home/disk/bob/impacts/raw/radar/2020/mrms/MergedBaseReflectivityQC'
filePrefix = 'MRMS_MergedBaseReflectivityQC'
extension = 'grib2'
extensionZipped = 'grib2.gz'
ncPrefix = filePrefix.replace('_','.')
#ncPrefix = 'MRMS.MergedBaseReflectivityQC'
ncDirBase = '/home/disk/bob/impacts/netcdf/mrms/2DBaseRefl'
mdvDirBase = '/home/disk/bob/impacts/mdv/mrms/2DBaseRefl'
paramsDir = '/home/disk/bob/impacts/git/lrose-impacts/projDir/ingest/params'
ncVarName = 'DBZ_base'
domain = ['32.','-105.','50.','-65.']   # [minLat,minLon,maxLat,maxLon]
level = '00.00'
startStr = '202001250000'
stopStr  = '202002280000'

startObj = datetime.strptime(startStr,'%Y%m%d%H%M')
stopObj  = datetime.strptime(stopStr,'%Y%m%d%H%M')

for date in os.listdir(gribDir):
    
    if date.startswith('2020') and os.path.isdir(gribDir+'/'+date):

        dateDir = gribDir+'/'+date
        os.chdir(dateDir)

        # get filelist
        filesAll = sorted(glob.glob(dateDir+'/*'+extension))
        if len(filesAll) == 0:
            filesAll = sorted(glob.glob(dateDir+'/'+filePrefix+'_'+level+'_*'+extensionZipped))
        for gribFile in filesAll:

            # get date and time and ensure it is in range
            (head,tail) = os.path.split(gribFile)
            if tail.endswith('gz'):
                (tmp,ext) = os.path.splitext(tail)
                (base,ext) = os.path.splitext(tmp)
            else:
                (base,ext) = os.path.splitext(tail)
                
            dateTimeStr = base.replace(filePrefix+'_'+level+'_','')
            if tail.endswith('gz'):
                files = sorted(glob.glob(dateDir+'/'+filePrefix+'_*_'+dateTimeStr[:-2]+'*'+ext+'.gz'))
                fileList = []
                for f in files:
                    f_unzipped = f.replace('.gz','')
                    with gzip.open(f,'rb') as f_in:
                        with open(f_unzipped,'wb') as f_out:
                            shutil.copyfileobj(f_in,f_out)
                    fileList.append(f_unzipped)
                files = fileList
            else:
                files = sorted(glob.glob(dateDir+'/'+filePrefix+'_*_'+dateTimeStr[:-2]+'*'+ext))

            (fileDate,fileTime) = dateTimeStr.split('-')
            dateTimeObj = datetime.strptime(dateTimeStr,'%Y%m%d-%H%M%S')
            minutes = dateTimeObj.strftime('%M')
            # only want data every 10 minutes so look for minutes ending in '7' or '8'
            if dateTimeObj >= startObj and dateTimeObj <= stopObj and minutes[-1] in ['7','8']:

                # convert grib2 to netcdf
                ncDir = ncDirBase+'/'+date
                ncFile = ncPrefix+'.'+fileDate+'.'+fileTime+'.nc'
                if  not os.path.isdir(ncDir):
                    os.makedirs(ncDir)
                command = 'wgrib2 '+files[0]+' -netcdf '+ncDir+'/'+ncFile
                try:
                    os.system(command)
                except:
                    print('WARNING: Bad grib2 file:',gribFile)

                if os.path.isfile(ncDir+'/'+ncFile):
                    
                    # change variable name from MergedBaseReflectivityQC_0mabovemeansealevel to DBZ_base
                    os.chdir(ncDir)
                    ncFileNew = ncFile+'.new'
                    command = 'ncrename -h -v MergedBaseReflectivityQC_0mabovemeansealevel,'+ncVarName+' '+ncFile+' '+ncFileNew
                    os.system(command)
                    shutil.move(ncFileNew,ncFile)

                    # add alt dim to ncFile - still need to add altitude dim to DBZ_base field
                    command = "ncap2 -s \'defdim(\"altitude\",1);altitude[altitude]=0.5;altitude@long_name=\"altitude\";altitude@units=\"km\"\' -O "+ncFile+" "+ncFileNew
                    os.system(command)
                    shutil.move(ncFileNew,ncFile)

                    # change domain to IMPACTS region
                    #command = 'ncea -h -d latitude,32.,48. -d longitude,-100.,-66. '+ncFile+' '+ncFileNew
                    command = 'ncea -h -d latitude,'+domain[0]+','+domain[2]+' -d longitude,'+domain[1]+','+domain[3]+' '+ncFile+' '+ncFileNew
                    os.system(command)
                    shutil.move(ncFileNew,ncFile)

                    # set DATE environment var
                    os.environ['DATE'] = date
                    command = 'NcGeneric2Mdv -v -params '+paramsDir+'/NcGeneric2Mdv.mrms_base_refl_2020 -f '+ncFile
                    os.system(command)

            if tail.endswith('gz'):
                for f in files:
                    os.remove(f)

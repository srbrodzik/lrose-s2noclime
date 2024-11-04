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

gribDir = '/home/disk/data/nexrad/mrms/2DBaseReflQC'
filePrefix = 'MRMS_MergedBaseReflectivityQC'
extension = 'grib2'
ncPrefix = 'MRMS.MergedBaseReflectivityQC'
ncDirBase = '/home/disk/bob/impacts/netcdf/mrms/2DBaseRefl'
mdvDirBase = '/home/disk/bob/impacts/mdv/mrms/2DBaseRefl'
paramsDir = '/home/disk/bob/impacts/git/lrose-impacts/projDir/ingest/params'
ncVarName = 'DBZ_base'
domain = ['32.','-105.','50.','-65.']   # [minLat,minLon,maxLat,maxLon]
level = '00.50'
startStr = '202303011800'
stopStr  = '202303021630'

startObj = datetime.strptime(startStr,'%Y%m%d%H%M')
stopObj  = datetime.strptime(stopStr,'%Y%m%d%H%M')

for date in os.listdir(gribDir):
    
    if (date.startswith('20230301') or date.startswith('20230302'))  and os.path.isdir(gribDir+'/'+date):

        dateDir = gribDir+'/'+date
        os.chdir(dateDir)

        # get filelist
        files = sorted(glob.glob(dateDir+'/*'+extension))
        for gribFile in files:

            # get date and time and ensure it is in range
            (head,tail) = os.path.split(gribFile)
            (base,ext) = os.path.splitext(tail)
            dateTimeStr = base.replace(filePrefix+'_'+level+'_','')
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
                command = 'wgrib2 '+gribFile+' -netcdf '+ncDir+'/'+ncFile
                try:
                    os.system(command)
                except:
                    print('WARNING: Bad grib2 file:',gribFile)

                if os.path.isfile(ncDir+'/'+ncFile):
                    
                    # change variable name from MergedBaseReflectivityQC_500mabovemeansealevel to DBZ_base
                    os.chdir(ncDir)
                    ncFileNew = ncFile+'.new'
                    command = 'ncrename -h -v MergedBaseReflectivityQC_500mabovemeansealevel,'+ncVarName+' '+ncFile+' '+ncFileNew
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
                    command = 'NcGeneric2Mdv -v -params '+paramsDir+'/NcGeneric2Mdv.mrms_base_refl -f '+ncFile
                    os.system(command)


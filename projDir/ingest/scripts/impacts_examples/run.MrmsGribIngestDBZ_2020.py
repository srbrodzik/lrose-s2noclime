#!/usr/bin/python3

import os
import datetime
from datetime import date
from datetime import timezone
import glob
import gzip
import shutil

baseDir = '/home/disk/bob/impacts/raw/radar/2020/mrms/MergedReflectivityQC'
filePrefix = 'MRMS_MergedReflectivityQC'
extension = 'grib2'
extensionZipped = 'grib2.gz'
topLevel = '19.00'
paramDir = '/home/disk/bob/impacts/git/lrose-impacts/projDir/ingest/params'

for date in os.listdir(baseDir):

    if ( date.startswith('20200225') or date.startswith('20200226') ) and os.path.isdir(baseDir+'/'+date) :

        dateDir = baseDir+'/'+date
        os.chdir(dateDir)

        files_topLevel = sorted(glob.glob(dateDir+'/'+filePrefix+'_'+topLevel+'_*'+extension))
        if len(files_topLevel) == 0:
            files_topLevel = sorted(glob.glob(dateDir+'/'+filePrefix+'_'+topLevel+'_*'+extensionZipped))
        for fullPathFile in files_topLevel:
            print(fullPathFile)
            (head,tail) = os.path.split(fullPathFile)
            if tail.endswith('gz'):
                (tmp,ext) = os.path.splitext(tail)
                (base,ext) = os.path.splitext(tmp)
            else:
                (base,ext) = os.path.splitext(tail)
            dateTimeStr = base.replace(filePrefix+'_'+topLevel+'_','')
            if tail.endswith('gz'):
                files_current = sorted(glob.glob(dateDir+'/'+filePrefix+'_*_'+dateTimeStr[:-2]+'*'+ext+'.gz'))
                fileList = []
                for f in files_current:
                    f_unzipped = f.replace('.gz','')
                    with gzip.open(f,'rb') as f_in:
                        with open(f_unzipped,'wb') as f_out:
                            shutil.copyfileobj(f_in,f_out)
                    fileList.append(f_unzipped)
                files_current = fileList
            else:
                files_current = sorted(glob.glob(dateDir+'/'+filePrefix+'_*_'+dateTimeStr[:-2]+'*'+ext))
    
            if len(files_current) >= 30:
                command = 'MrmsGribIngest -v -params '+paramDir+'/MrmsGribIngest.refl_2020 -f '+dateDir+'/*'+dateTimeStr[:-2]+'*'+ext
                os.system(command)

            if tail.endswith('gz'):
                for f in files_current:
                    os.remove(f)
                

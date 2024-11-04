#!/usr/bin/python3

import os
import datetime
from datetime import date
from datetime import datetime
from datetime import timezone
import glob
import shutil

baseDir = '/home/disk/data/nexrad/mrms/3DRefl'
filePrefix = 'MRMS_MergedReflectivityQC'
extension = 'grib2'
topLevel = '19.00'
paramDir = '/home/disk/bob/impacts/git/lrose-impacts/projDir/ingest/params'
startStr = '202303011400'
stopStr  = '202303021630'

startObj = datetime.strptime(startStr,'%Y%m%d%H%M')
stopObj  = datetime.strptime(stopStr,'%Y%m%d%H%M')

for date in os.listdir(baseDir):

    if (date.startswith('20230301') or date.startswith('20230302'))  and os.path.isdir(baseDir+'/'+date):

        dateDir = baseDir+'/'+date
        os.chdir(dateDir)

        files_topLevel = sorted(glob.glob(dateDir+'/'+filePrefix+'_'+topLevel+'_*'+extension))
        for fullPathFile in files_topLevel:
            (head,tail) = os.path.split(fullPathFile)
            (base,ext) = os.path.splitext(tail)
            dateTimeStr = base.replace(filePrefix+'_'+topLevel+'_','')
            dateTimeObj = datetime.strptime(dateTimeStr,'%Y%m%d-%H%M%S')
            minutes = dateTimeObj.strftime('%M')
            # make sure time is in correct window and minutes in [06,16,26,36,46,56]
            if dateTimeObj >= startObj and dateTimeObj <= stopObj and minutes[-1] == '6':
                print(fullPathFile)
                files_current = sorted(glob.glob(dateDir+'/'+filePrefix+'_*_'+dateTimeStr+ext))
    
                if len(files_current) >= 30:
                    command = 'MrmsGribIngest -v -params '+paramDir+'/MrmsGribIngest.refl_archive -f '+dateDir+'/*'+dateTimeStr+ext
                    os.system(command)

                

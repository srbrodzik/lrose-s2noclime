#!/usr/bin/python3

import os
import datetime
from datetime import date
from datetime import datetime
from datetime import timezone
import glob
import shutil

baseDir = '/home/disk/data/nexrad/mrms/Kdp'
filePrefix = 'MRMS_EXP_MergedKdp'
extension = 'grib2'
topLevel = '19.00'
paramDir = '/home/disk/bob/impacts/git/lrose-impacts/projDir/ingest/params'
startStr = '202303011350'
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
            # make sure time is in correct window and minutes in [05,15,25,35,45,55]
            if dateTimeObj >= startObj and dateTimeObj <= stopObj and minutes[-1] == '5':
                print(fullPathFile)
                files_current = sorted(glob.glob(dateDir+'/'+filePrefix+'_*_'+dateTimeStr+ext))
    
                if len(files_current) >= 30:
                    command = 'MrmsGribIngest -v -params '+paramDir+'/MrmsGribIngest.kdp_archive -f '+dateDir+'/*'+dateTimeStr+ext
                    os.system(command)

                

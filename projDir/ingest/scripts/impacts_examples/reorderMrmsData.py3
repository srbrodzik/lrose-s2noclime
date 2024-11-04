#!/usr/bin/python3

import os
import shutil

baseDir = '/home/disk/bob/impacts/raw/radar/2020/mrms'
prodList = ['MergedBaseReflectivityQC','MergedReflectivityQC','MergedReflectivityQCComposite',
            'MergedReflectivityQComposite']

for dirDate in os.listdir(baseDir):
    if dirDate.startswith('20200226') and os.path.isdir(baseDir+'/'+dirDate):
        tmpDir = baseDir+'/'+dirDate
        for dirHour in os.listdir(tmpDir):
            if dirHour.startswith(dirDate) and os.path.isdir(tmpDir+'/'+dirHour):
                print('dirHour =',dirHour)
                workingDir = tmpDir+'/'+dirHour
                os.chdir(workingDir)
                for prod in prodList:
                    print('  prod =',prod)
                    if os.path.isdir(workingDir+'/'+prod):
                        if not os.path.isdir(baseDir+'/'+prod+'/'+dirDate):
                            os.makedirs(baseDir+'/'+prod+'/'+dirDate)
                        command = 'mv '+workingDir+'/'+prod+'/* '+baseDir+'/'+prod+'/'+dirDate
                        os.system(command)
                        shutil.rmtree(workingDir+'/'+prod)
                shutil.rmtree(workingDir)
        os.rmdir(tmpDir)

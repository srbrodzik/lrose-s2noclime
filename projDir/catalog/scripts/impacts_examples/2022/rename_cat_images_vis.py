#!/usr/bin/python3

import shutil
import sys
import os

if len(sys.argv) < 2:
    print('usage: sys.argv[0] [YYYYMMDD]')
    sys.exit()
else:
    date = sys.argv[1]

baseDir = '/media/usb/data/raw/images'

inDir = baseDir + '/' + date
for file in os.listdir(inDir):
    if 'CH01' in file:
        print(file)
        parts = file.split('.')
        datetime = parts[4]
        datetime = datetime[:-2]
        file_new = 'gis.GOES-16.'+datetime+'.vis_ch01.png'
        shutil.move(inDir+'/'+file,inDir+'/'+file_new)
        

#!/usr/bin/python3

import os

gribDir = '/home/disk/data/nexrad/mrms/3DRefl'

for date in os.listdir(gribDir):
    if os.path.isdir(gribDir+'/'+date) and date.startswith('2021'):
        files = sorted(os.listdir(gribDir+'/'+date))
        for file in files:
            if '_00.50_' in file:
                (base,ext) = os.path.splitext(file)
                (cat,prod,level,datetime) = base.split('_')
                command = 'MrmsGribIngest -v -p MrmsGribIngest.refl_archive -f '+gribDir+'/'+date+'/*'+datetime+'*'
                os.system(command)
                


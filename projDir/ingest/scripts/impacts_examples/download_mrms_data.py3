#!/usr/bin/python3

# Based on https://mrms.agron.iastate.edu/

import os
import datetime
import subprocess
import shutil

outDirBase = '/home/disk/bob/impacts/raw/radar/2020/mrms'

# Get hourly files between specified dates/times
now = datetime.datetime(2020, 2, 25, 20)
utc_end = datetime.datetime(2020, 2, 26, 5)

while now < utc_end:

    # download data
    nowDateStr = now.strftime('%Y%m%d')
    outDir = outDirBase+'/'+nowDateStr
    if not os.path.isdir(outDir):
        os.makedirs(outDir)
    os.chdir(outDir)
    currentHourStr = now.strftime('%Y%m%d%H')
    zipFile = currentHourStr + '.zip'
    cmd = 'wget -L -O '+zipFile+' https://mrms.agron.iastate.edu/'+now.strftime('%Y/%m/%d/%Y%m%d%H')+'.zip'
    print(cmd)
    os.system(cmd)
    #subprocess.run(cmd, shell=True)
    
    # unzip data and remove unneeded directories
    cmd = 'unzip -q '+zipFile
    os.system(cmd)
    os.remove(zipFile)
    if os.path.isdir(outDir+'/'+currentHourStr):
        os.chdir(outDir+'/'+currentHourStr)
        if os.path.isdir('ALASKA'):
            shutil.rmtree('ALASKA')
        if os.path.isdir('ANC'):
            shutil.rmtree('ANC')
        if os.path.isdir('CARIB'):
            shutil.rmtree('CARIB')
        if os.path.isdir('GUAM'):
            shutil.rmtree('GUAM')
        if os.path.isdir('HAWAII'):
            shutil.rmtree('HAWAII')
        if os.path.isdir('ProbSevere'):
            shutil.rmtree('ProbSevere')
        if os.path.isdir('CONUS'):
            os.chdir(outDir+'/'+currentHourStr+'/CONUS')
            if os.path.isdir('MergedReflectivityQC'):
                shutil.move('MergedReflectivityQC',outDir+'/'+currentHourStr)
            #if os.path.isdir('MergedRhoHV'):
            #    shutil.move('MergedRhoHV',outDir+'/'+currentHourStr)
            #if os.path.isdir('MergedZdr'):
            #    shutil.move('MergedZdr',outDir+'/'+currentHourStr)
            if os.path.isdir('MergedReflectivityQCComposite'):
                shutil.move('MergedReflectivityQCComposite',outDir+'/'+currentHourStr)
            if os.path.isdir('MergedReflectivityQComposite'):
                shutil.move('MergedReflectivityQComposite',outDir+'/'+currentHourStr)
            if os.path.isdir('MergedBaseReflectivityQC'):
                shutil.move('MergedBaseReflectivityQC',outDir+'/'+currentHourStr)
            #if os.path.isdir('PrecipRate'):
            #    shutil.move('PrecipRate',outDir+'/'+currentHourStr)
            os.chdir(outDir+'/'+currentHourStr)
            shutil.rmtree('CONUS') 

    # go to next hour
    now += datetime.timedelta(hours=1)

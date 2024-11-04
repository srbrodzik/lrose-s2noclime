#!/usr/bin/python

import os
import sys
from datetime import datetime
from datetime import timedelta

# Set time window
now = datetime.utcnow()
oneHourAgo = now - timedelta(hours=1)
end_time_str = now.strftime('%Y%m%d%H')+'00'
start_time_str = oneHourAgo.strftime('%Y%m%d%H')+'00'

command = '/home/snowband/impacts/git/lrose-impacts/projDir/catalog/scripts/create_catMaps_goes_ch01.py '+start_time_str+' '+end_time_str
#command = '/home/disk/bob/impacts/bin/kml_create/create_catMaps_goes_ch01.py '+start_time_str+' '+end_time_str
os.system(command)

command = '/home/snowband/impacts/git/lrose-impacts/projDir/catalog/scripts/create_catMaps_goes_ch13.py '+start_time_str+' '+ end_time_str
#command = '/home/disk/bob/impacts/bin/kml_create/create_catMaps_goes_ch13.py '+start_time_str+' '+ end_time_str
os.system(command)

command = '/home/snowband/impacts/git/lrose-impacts/projDir/catalog/scripts/create_catMaps_mrms_refl_gis.py '+start_time_str+' '+end_time_str
#command = '/home/disk/bob/impacts/bin/kml_create/create_catMaps_mrms_refl_gis.py '+start_time_str+' '+end_time_str
os.system(command)

command = '/home/snowband/impacts/git/lrose-impacts/projDir/catalog/scripts/create_catMaps_mrms_refl_radar.py '+start_time_str+' '+ end_time_str
#command = '/home/disk/bob/impacts/bin/kml_create/create_catMaps_mrms_refl_radar.py '+start_time_str+' '+ end_time_str
os.system(command)

command = '/home/snowband/impacts/git/lrose-impacts/projDir/catalog/scripts/rename_cat_images_and_ftp.py'
#command = '/home/disk/bob/impacts/bin/kml_create/rename_cat_images_and_ftp.py'
os.system(command)

#!/bin/csh

setenv CATEGORY gis
setenv PLATFORM_NAME NEXRAD_MOSAIC
setenv NUM_MENU_BAR_CELLS 1
setenv RENDER_LTG TRUE
setenv CIDD_LABEL IMPACTS
setenv CREATING_IMAGES 1
setenv TRANSPARENT_IMAGES 1
setenv IS_TRANS -TRANS
setenv PLOT_MAPS 0
setenv FOREGROUND_COLOR red
#setenv FOREGROUND_COLOR transparent
setenv BACKGROUND_COLOR black
setenv MISSING_DATA_COLOR transparent
setenv RANGE_RING_FLAG 0
setenv SHOW_HEIGHT_SEL 0
setenv TIME_INTERVAL 10.0
setenv IMAGE_DIR $DATA_DIR/raw/images
setenv OUTPUT_GEO_XML 0
setenv MARGIN_WIDTH 0
setenv HORIZ_DEFAULT_HEIGHT 1500
setenv COLOR_SCALE_WIDTH 0
setenv PROJECTION MERCATOR
setenv ZOOM_LIMITS_IN_LATLON 1
setenv ORIGIN_LAT 0.0
setenv ORIGIN_LON -80.25
setenv MINX -93.0
setenv MAXX -67.5
setenv MINY  32.5
setenv MAXY  46.5

setenv CIDD_DEMO_TIME '00:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '00:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '00:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '00:30 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '00:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '00:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '01:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '01:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '01:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '01:30 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '01:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '01:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '02:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '02:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '02:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '02:30 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '02:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '02:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '03:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '03:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '03:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '03:30 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '03:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '03:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '04:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '04:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '04:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '04:30 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '04:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '04:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '05:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '05:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '05:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '05:30 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '05:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '05:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '06:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '06:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '06:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '06:30 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '06:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '06:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '07:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '07:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '07:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '07:30 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '07:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '07:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '08:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '08:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '08:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '08:30 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '08:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '08:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '09:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '09:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '09:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '09:30 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '09:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '09:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '10:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '10:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '10:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '10:30 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '10:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '10:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '11:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '11:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '11:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '11:30 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '11:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '11:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '12:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '12:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '12:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '12:30 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '12:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '12:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '13:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '13:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '13:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '13:30 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '13:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '13:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '14:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '14:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '14:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '14:30 01/05/2020'
cd $PROJ_DIR/catalog/paras
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '14:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '14:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '15:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '15:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '15:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '15:30 01/05/2020'
cd $PROJ_DIR/catalog/paras
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '15:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '15:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '16:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '16:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '16:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '16:30 01/05/2020'
cd $PROJ_DIR/catalog/paras
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '16:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '16:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '17:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '17:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '17:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '17:30 01/05/2020'
cd $PROJ_DIR/catalog/paras
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '17:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '17:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '18:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '18:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '18:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '18:30 01/05/2020'
cd $PROJ_DIR/catalog/paras
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '18:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '18:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '19:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '19:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '19:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '19:30 01/05/2020'
cd $PROJ_DIR/catalog/paras
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '19:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '19:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '20:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '20:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '20:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '20:30 01/05/2020'
cd $PROJ_DIR/catalog/paras
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '20:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '20:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '21:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '21:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '21:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '21:30 01/05/2020'
cd $PROJ_DIR/catalog/paras
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '21:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '21:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '22:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '22:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '22:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '22:30 01/05/2020'
cd $PROJ_DIR/catalog/paras
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '22:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '22:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '23:00 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '23:10 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '23:20 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '23:30 01/05/2020'
cd $PROJ_DIR/catalog/paras
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '23:40 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2

setenv CIDD_DEMO_TIME '23:50 01/05/2020'
cd $PROJ_DIR/catalog/params
CIDD -p CIDD.catalog.mosaic_nexrad_archive -i mosaic.web.transparent -fn fixed -v 2


DATA_URL=https://s3.amazonaws.com/closedcontour/yose/data

pushd tilemill-project/data

if [ ! -d db ]; then
	mkdir db
	cd db
	CC_DATA_URL=$DATA_URL/db/cc-yose-0.2.osm.pbf
	echo Downloading $CC_DATA_URL
	curl -O $CC_DATA_URL
	cd ..
fi

if [ ! -d contour ]; then
	mkdir contour
	cd contour
	# Optional: you can download a single file of all the 40ft contours if you'd like to reprocess them
	#curl -O $DATA_URL/contour/contour_40ft_wgs84.tar.bz2
	CONTOUR_FILE=no-ice-contour-40ft.tar.bz2
	CONTOUR_URL=$DATA_URL/contour/$CONTOUR_FILE
	ICE_CONTOUR_FILE=ice-contour-40ft.tar.bz2
	ICE_CONTOUR_URL=$DATA_URL/contour/$ICE_CONTOUR_FILE

	echo Downloading $ICE_CONTOUR_URL
	curl -O $ICE_CONTOUR_URL
	tar xjfv $ICE_CONTOUR_FILE
	#echo Downloading $CONTOUR_URL
	#curl -O $CONTOUR_URL
	#tar xjfv $CONTOUR_FILE
	cd ..
fi

if [ ! -d landcover ]; then
	mkdir landcover
	cd landcover
	CALVEG_FILE=calveg-merged.tar.bz2
	CALVEG_URL=$DATA_URL/landcover/$CALVEG_FILE
	YOSEVEG_FILE=yose_97veg_clipped_wgs84.tar.bz2
	YOSEVEG_URL=$DATA_URL/landcover/$YOSEVEG_FILE
	echo Downloading $CALVEG_URL
	curl -O $CALVEG_URL
	tar xjfv $CALVEG_FILE
	echo Downloading $YOSEVEG_URL
	curl -O $YOSEVEG_URL
	tar xjfv $YOSEVEG_FILE
	cd ..
fi

if [ ! -d hillshade ]; then
	mkdir hillshade
	cd hillshade
	HILLSHADE_FILE=yose_10m_wm_hillshade.tif.bz2
	HILLSHADE_URL=$DATA_URL/hillshade/$HILLSHADE_FILE
	echo Downloading $HILLSHADE_URL
	curl -O $HILLSHADE_URL
	tar xjfv $HILLSHADE_FILE
	cd ..
fi

popd
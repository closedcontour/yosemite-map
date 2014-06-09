Yosemite Map
----
A topographic map of Yosemite National Park and immediate surrounds.

![An example rendering of the closedcontour Yosemite Map.](https://s3.amazonaws.com/closedcontour/yose/cc-yose-preview.jpg)

[View the current on-line version.](http://closedcontour.github.io/yosemite-map/)

Dependencies
----
The following are required:

* [PostgreSQL](http://www.postgresql.org/) with [PostGIS](http://postgis.net/)
* [osm2pgsql](https://github.com/openstreetmap/osm2pgsql)
* A recent [development build](http://tilemill.s3.amazonaws.com/index.html?path=dev/) of [TileMill](https://www.mapbox.com/tilemill/). I used [this one](http://tilemill.s3.amazonaws.com/dev/TileMill-v0.10.1-300-gf7af7fb.zip). The development build is required for some raster operations.

Instructions
----
Note that so far this has only been tried on Mac OS X.

First download all of the data (~0.8Gb) for the map:

    yosemite-map$ ./download-data.sh

Then create the PostgreSQL/PostGIS database that will house the data:

    yosemite-map$ ./create-database.sh

Then populate the database:

    yosemite-map$ ./download-data.sh

Next, symlink the `tilemill-project` directory into your TileMill projects, something like this:

    $ cd ~/Documents/MapBox/project/
    project$ ln -s ~/src/yosemite-map/tilemill-project/ yosemite

Then run TileMill and open the 'closedcontour - Yosemite' project.

Fonts
----
The font styles in `style.mss` call for fonts that may not be present on your system, feel free to modify.

Attribution
----
Data for this map come from:

* USGS
  * NED
  * NHD
  * GNIS
  * Topographic Maps
* NPS
  * Park Boundary
  * Roads
  * Trails
  * Giant Sequoias
  * Park Landcover
  * Buildings
  * Picnic Areas
* Forest Service
  * CALVEG Landcover
  * Trails in Inyo, Sierra, Stanislaus, and Humboldt-Toiyabe National Forests
* Rock Climbs of Tuolumne Meadows, Don Reid and Chris Falkenstein
  * Tuolumne Meadows dome names

A few [Maki icons](https://www.mapbox.com/maki/) were used.

The following software has been used extensively in developing this map:

* [OpenStreetMap "Rails Port"](https://github.com/openstreetmap/openstreetmap-website/)
* [GDAL and OGR](http://www.gdal.org/)
* [JOSM](https://josm.openstreetmap.de/)
* [Osmosis](https://github.com/openstreetmap/osmosis)
* [ogr2osm](https://github.com/pnorman/ogr2osm)
* [osmtogeojson](https://github.com/tyrasd/osmtogeojson/)

License
----
You can do whatever you want with the shell scripts.

The data downloaded by the download-data.sh script, the generated tiles, and the style files (*.mms) to generate them are licensed under [CC-BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/).


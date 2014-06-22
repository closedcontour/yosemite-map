source db.sh

osm2pgsql -c -d $DB -U $USER -S closedcontour.style tilemill-project/data/db/cc-yose-0.6.osm.pbf

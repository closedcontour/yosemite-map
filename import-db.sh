source db.sh

osm2pgsql -c -d $DB -U $USER -S closedcontour.style data/db/cc-yose-0.2.osm.pbf

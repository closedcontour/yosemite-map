source db.sh

osm2pgsql -c -d $DB -U $USER -S closedcontour.style tilemill-project/data/db/cc-yose-0.6.osm.pbf

echo "
  DROP TABLE IF EXISTS joined_trails;
  
  CREATE TABLE joined_trails AS 
  	SELECT NAME,(ST_Dump(ST_LineMerge(ST_Collect(ST_CollectionHomogenize(way))))).geom AS way 
  	FROM planet_osm_line 
  	WHERE highway='path' 
  	GROUP BY name;

  ALTER TABLE joined_trails 
  	ALTER COLUMN way TYPE geometry(LineString,900913)
  	USING ST_SetSRID(way,900913);
" | psql -U $USER
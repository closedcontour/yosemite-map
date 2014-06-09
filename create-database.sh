source db.sh

echo "
	CREATE DATABASE $DB;
	CREATE USER $USER WITH PASSWORD '$PASSWORD';
	GRANT ALL PRIVILEGES ON DATABASE $DB TO closedcontour;
	\c $DB;
	CREATE EXTENSION postgis;
" | psql
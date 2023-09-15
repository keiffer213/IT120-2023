dropdb selectActivity
createdb selectActivity
psql -d selectActivity -f create-tables.sql
psql -d selectActivity -f populate-tables.sql
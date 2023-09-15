dropdb createActivity
createdb createActivity
psql -d createActivity -f create-tables.sql
psql -d createActivity -f populate-tables.sql
psql -d createActivity -f query.sql

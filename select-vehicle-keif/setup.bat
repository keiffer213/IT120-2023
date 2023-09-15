dropdb --force vehicle50k
createdb vehicle50k
psql -d vehicle50k -f create.sql

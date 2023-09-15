dropdb --force shelter
createdb shelter
psql -d shelter -f create.sql
psql -d shelter -f vaccine.sql
psql -d shelter -f needs.sql
psql -d shelter -f census.sql
psql -d shelter -f homes.sql

psql -d shelter -f queries.sql

dropdb --force pim
createdb pim
psql -d pim -f pim.sql

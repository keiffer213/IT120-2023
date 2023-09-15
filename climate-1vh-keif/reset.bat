@REM   Reset Climate database and run queries

@REM   On Windows Powershell, run:   .\reset.bat

@REM   For Unix shells (git-bash, bash, zsh), the accompaning script interprets this file.
@REM   Run:    ./reset.sh


dropdb --force climate
createdb climate
psql -d climate -f create.sql
REM psql -d climate -f queries.sql
psql -d climate -f create-donation.sql
psql -d climate -f create-sale.sql
psql -d climate -f insert.sql
psql -d climate -f insert-donation.sql
psql -d climate -f insert-sale.sql

REM copied from partial populate .bat file below queries.sql
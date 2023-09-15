@REM   Reset Climate database and run queries

@REM   On Windows Powershell, run:   .\reset.bat

@REM   For Unix shells (git-bash, bash, zsh), the accompanying script interprets this file.
@REM   Run:    ./reset.sh


dropdb --force climate
createdb climate
psql -d climate -f create.sql
psql -d climate -f create-donation.sql
psql -d climate -f create-sale.sql
psql -d climate -f insert.sql
psql -d climate -f insert-donation.sql
psql -d climate -f insert-sale.sql

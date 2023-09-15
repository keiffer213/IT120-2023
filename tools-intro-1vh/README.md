# Tools-Intro

This is a repository that introduces you to the IT-120 workflow.

It contains the start of a personal information manager ("PIM") that manages
contacts and meetings (in a very simple way).

## PIM

The script "reset.bat" (or "reset.sh" if you are running a bash/zsh shell)
does the following with the database "pim":

- deletes the database
- creates a new version
- runs the SQL that creates and populates tables

## Workflow

You should open this folder in VSCode.

From VSCode, start a Terminal.

Inside the terminal, run the automation:


On Windows:

```sh
.\reset.bat
```

On Unix:

```sh
./reset.sh
```

You should get the results:

```sh
+ dropdb --force pim
+ createdb pim
+ psql -d pim -f pim.sql
CREATE TABLE
INSERT 0 3
```

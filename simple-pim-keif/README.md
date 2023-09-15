# Simple PIM

This is a repository that introduces you to the IT-120 workflow.

It contains the start of a personal information manager ("PIM") that manages
contacts and meetings (in a very simple way).

## The Assignment

Create and populate a simple contact manager. It has a 1:many relation
for person:phone.

With your INSERT of sample data, please:

• have at least two people
• give one person more than one phone

### Submit

Make changes in this repository until you have what you would like to submit.

Make sure all changes have been recorded in a commit. ("git status" should say "working tree clean".)

Push your changes back to "origin" (the place this repository was cloned from.)
You can do this from the command prompt:

```
git push
```

or by pressing the "Sync" button in VSCode.

Notify me in Canvas that you have pushed. If you want to say the
commit ID or copy the output from the push, it gives me extra to confirm
I have the right things, but a simple push is OK.

### Extra

Maybe there are attributes that might be interesting to add to either
of these tables. Experiment with these.

Make a way to add a “related name” (or names) to a contact that would
take you to a different contact. Demonstrate with INSERTed data.

## Workflow

### Automation

The provided script "reset.bat" (or "reset.sh" if you are running a
bash/zsh shell) does the following with the database "simple-pim":

- deletes the database
- creates a new version
- runs the SQL that creates and populates tables

### Editing

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

You should see CREATEs and INSERTs as you implement them:

```sh
+ dropdb --force simple-pim
+ createdb simple-pim
+ psql -d simple-pim -f pim.sql
CREATE TABLE
INSERT 0 3
```

### Viewing the Design

The design is provide in .drawio and .svg formats.

You can use a web browser to view the .svg.

On Windows, using the PowerShell in the Terminal window, opened to the project directory:

```
start simple-pim_ERD.svg
```

On Mac, using the csh/zsh shell in the Terminal window, opened to the project directory:

```
open simple-pim_ERD.svg
```

("start" on Windows and "open" on macOS are commands that open a
file/directory with the default tool for the type of file they are
given. For SVG (and html, etc.), that is the web browser.)

### Hints

It is great to commit often! A commit gives you a snapshot you can go
back to. And a commit that has been pushed turns into an off-site
backup.

If you have problems with Git (like: you want to retrieve an earlier
version), get in touch!
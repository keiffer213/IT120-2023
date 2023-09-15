#!/bin/bash

# Script to filter comments out of a Windows .bat file and then run
# the remaining text as commands. This makes it easier to share simple
# scripts between operating systems.

# Usage:
#
# If run without arguments, this runs the script of the same name as
# this but with a .bat extension.
#
# If run with an argument, processes the first argument as a script.

# FIXME:
#
# - Does not protect filenames with spaces
# - Does not run last line of file if it doesn't end in newline

if [ $# -ne 0 ] ; then
    SCRIPT=$1
else
    SCRIPT=$(basename $0 | sed 's/\.sh$/.bat/')
fi

LINENUMBER=0
tr -d \\015 < $SCRIPT | while read LINE; do
    ((LINENUMBER++))

    CMD=$(echo $LINE | sed -E -e 's/^\s*@?REM[ 	].*//'  -e 's/^\s*::.*//' -e 's/^\s+//')
    if [ ! -z "$CMD" ]; then
	echo + $CMD
	$CMD || echo "- Command '${CMD}' failed: exit code $? in ${SCRIPT} line ${LINENUMBER}"
    fi
done


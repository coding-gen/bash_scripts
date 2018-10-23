#!/bin/bash

# Output thrown away. Rediredt STDERR to STDOUT
echo "Checking existence of user $1"
$(id -u $1 >/dev/null 2>&1 )

# Then can use exit status of last command as $?
# This redirects STDOUT of echo to STDERR for custom error message
if [ $? -eq 1 ]; then
    echo "Error!" 1>&2
else
    echo "Success." 1>&2
fi

# When calling on the CLI use > stdout.txt or 2> stderr.txt or > stdout_stderr.txt 2>&1
# The last one sends STDERR to STDOUT as well and redirects all STDOUT to file.
# Alternatively redirect both with &> stdout_stderr.txt or >& stdout_stderr.txt

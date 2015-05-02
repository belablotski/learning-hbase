#!/bin/bash

# See http://hbase.apache.org/book.html#hbase.shell.noninteractive
# Getting an exit code of 0 means that the command you scripted definitely succeeded. 
# However, getting a non-zero exit code does not necessarily mean the command failed. 
# The command could have succeeded, but the client lost connectivity, or some other 
# event obscured its success. This is because RPC commands are stateless. 
# The only way to be sure of the status of an operation is to check. 
# For instance, if your script creates a table, but returns a non-zero exit value, 
# you should check whether the table was actually created before trying again to create it.


echo "describe 'test'" | ./hbase shell -n > /dev/null 2>&1
status=$?
echo "The status was " $status
if ($status == 0); then
    echo "The command succeeded"
else
    echo "The command may have failed."
fi
return $status
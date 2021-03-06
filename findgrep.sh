#!/bin/bash

pattern=$1
directory=$2
if [ -z "$directory" ]; then
       directory="."
fi

if [ -z "name" ]; then
	name=*'*'
fi
find "$directory" -type f -print0 | xargs -0 grep -nH "$pattern"


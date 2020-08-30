#!/bin/bash

if [ $# -eq 2 ];then
	mkdir $2
	tar -xf /home/ellis/lab-0-command-line-introduction-wegle030/cleaning/$1 -C $2
	grep -1r "DELETE ME!" $2| xargs  rm -rf
	tar -cf cleaned_$1 $2
else
	echo "Wrong number of arguments"
fi
#This script takes in an existing archive name and a tmp directory name. It then extracts the contents of the archive and parses it for files containing DELETE ME! and deletes them all. After that, it sends them to a new archive called cleaned_$!.

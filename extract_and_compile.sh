#!/bin/bash

if [ $# -eq 2 ];then
	mkdir $2
	tar -xf /home/ellis/lab-0-command-line-introduction-wegle030/compiling/NthPrime.tgz -C $2
	gcc $2/NthPrime/main.c $2/NthPrime/nth_prime.c -o NthPrime
	./NthPrime $1
else
	echo "wrong number of arguments"
fi

# This script takes in a number and a name. It then takes the name and makes a tmp directory out of it which is where it extracts the tar contents to. After that it compiles the extracted contents and runs it.

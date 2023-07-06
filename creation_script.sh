#!/bin/bash

year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)
hour=$(date +%H)
minute=$(date +%M)
second=$(date +%S)


mkdir repo_"$1"
cd repo_"$1"

N=$3
for ((i=0; i<N; i++))
do
        millisecond=$(date +%2N)
	touch "$2"_"$year"-"$month"-"$day"-"$hour"-"$minute"-"$second"-"$millisecond"."txt"
	echo "$2"_"$year"-"$month"-"$day"-"$hour"-"$minute"-"$second"-"$millisecond"."txt"
	sleep 1
done

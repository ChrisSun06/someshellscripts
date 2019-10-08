#!/usr/bin/env bash
for i in `seq 1 50`
do
	if [ $i -lt 25 ]; then
		echo $i
	else
		./my_prog "$i" > ${i}.out
	fi
done

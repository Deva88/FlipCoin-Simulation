#!/bin/bash

#variables
headcount=0
tailcount=0

#use while loop
while [ $tailcount -lt 21  ] && [ $headcount -lt 21 ]
do

	if [ $((RANDOM%2)) -eq 1 ];then
	let headcount++
	else
	let tailcount++
	fi
done

echo "head score::$headcount"
echo "tail score::$tailcount"

if [ $headcount -gt $tailcount ];then
echo "Head wins total score is: $headcount"
echo "Head wins by $(($headcount-$tailcount)) points from Tail"

elif [ $headcount -lt $tailcount ];then
echo "Tail wins total score is: $tailcount"
echo "Tail wins by $(($tailcount-$headcount)) point from Head"

else
echo "Its a tie match:: Head score:$headcount :: Tail score:$tailcount"
fi

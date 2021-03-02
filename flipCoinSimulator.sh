#!/bin/bash -x

totalcount=100

#variables
headcount=0
tailcount=0

while [ $totalcount -gt 0 ]
do
if [ $((RANDOM%2)) -eq 1 ]
then
# let is use for evaluate
let headcount++
else
let tailcount++
fi
let totalcount--
done

echo "tail wins $tailcount times"
echo "head wins $headcount times"

#!/bin/sh

# variable
victim="carlos"
true_username="wiener"

# create username file cointains carlos for 100 times
output="username-carlos.lst"
printf $victim'\n%.0s' {1..100} |tee -a tmp.txt > /dev/null #| sed '1i wiener\' #|awk '(++n==3) {print "wiener"; n=0} {print}'

# insert true_username for fist line and every 3rd lines
#cat $output |awk '(++n==3) {print "wiener"; n=0} {print}'
cat tmp.txt|awk '(++n==3) {print "wiener"; n=0} {print}' > $output
echo -e "$true_username\n$(cat tmp.txt)" > tmp.txt
rm tmp.txt

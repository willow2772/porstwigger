#!/bin/sh

# variable
true_username="peter"

# create username file cointains carlos for 100 times
passwd_list="password.lst"
output="passwd-brute.lst"
#printf $victim'\n%.0s' {1..100} |tee -a tmp.txt > /dev/null #| sed '1i wiener\' #|awk '(++n==3) {print "wiener"; n=0} {print}'

# insert true_username for fist line and every 3rd lines
#cat $output |awk '(++n==3) {print "wiener"; n=0} {print}'
cat $passwd_lst|awk '(++n==3) {print "peter"; n=0} {print}' > $output
#echo -e "$true_username\n$(cat tmp.txt)" > tmp.txt
#rm tmp.txt

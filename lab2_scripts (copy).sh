#!/bin/bash
# Author : Sol Atencio
# Date: 1/1/2019

# accepting regular expression and file name
echo "Enter regular expression "
read regular_expression
echo "Enter name of file: "
read file_name

#feed to grep
grep $regular_expression $file_name

#get num of phone num in regex_practice.txt
grep -c '[0-9]\{3\}-[0-9]\{3}-[0-9]\{4\}' $file_name

#get num of emails
grep -c "@" $file_name

#get 303 area code and store in phone_results.txt
grep '303-' $file_name > phone_results.txt

#get emails not from geocities and store in email_results.txt
grep -E $file_name | grep -E -v '@geocities.com' > email_results.txt

#get all lines that match reg expression and store in command_results.txt
grep $1 $file_name > command_results.txt



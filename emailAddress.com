#! /bin/bash
echo "Enter email address"
read email 
pattern="[a-zA-Z0-9._%+-]+\@[a-zA-Z0-9]+\.[A-Za-Z]{2,6}"
if [[ $email =~ $pattern ]]
then
	echo "valid email address"
else
	echo "Inavlid email address"
fi

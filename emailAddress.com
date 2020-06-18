#! /bin/bash
echo "Enter email address"
read email
pattern="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-Z]{2,6}\b"
if [[ $email =~ $pattern ]]
then
	echo "valid email address"
else
	echo "Inavlid email address"
fi

#! /usr/bin/bash

# use the read command to get user input
echo "Please Enter your name : " 
read name
echo Your name is $name


# read can take multiple input
echo "Name three day of the week: "
read dayOne dayTwo dayThree
echo Your favourite days of the week are $dayOne, $dayTwo, $dayThree

# you can accept the input on the same line with the prompt
# this can be achieve by adding -p (p meaning prompt) infront of the read
read -p "What is your favourite programming language: " language
echo You said your favourite programming language is $language

# you can also accept input from user by making it silent
# this can be achieve by adding -s (p meaning silent) infront of the read
read -p "Username: " username
read -sp "Password: " password 
echo
echo Your username is $username and password is $password

# you can also accept inputs into an array
# this can be done by adding -a (a meaning array) infront of the read 
read -p "Enter the days of the week: " -a days
echo "The days of the weeks you entered are ${days[0]}, ${days[1]}"


# the default variable to hold user's input is $REPLY
# if you don't provide variable to hold the user's input
read -p "Enter your name: "
echo "My name is $REPLY"
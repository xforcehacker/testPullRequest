#!/bin/bash

#notes
#==============================================
#This script will work taking in consideration that you have some python processes running in the
#background for our test purposes.
#there is a part of the homework in which it requires to kill all the process of a user I don't have in my
# OS, assume that you have such user and run the command. You will eventually get an error since the user
# does not exist
#=============================================

#question 0
#0. Write a bash command to find the pids of all running python processes ( not python2 not python3, just python ).


echo "Now let's check all the python processes running""\n"
sleep 1
ps -e |grep python
sleep 2
#question 1
#1. Write a bash one-liner to get the pids of all *ython* processes running on your machine. i.e. all jython, python, python2, python3, $

#=====================================================
echo "....Listing all the python processes"
sleep 1

ps -a |grep ython* |cut -d " " -f1
#list processes that contains ython and cut information printed on screen with delimeter of space and field 1
sleep 2
#=====================================================
#question 2
# Write a bash program to sent the CONT signal to any *ython process whose pid is a multiple of 2, and a STOP signal to any process
echo "Let's send a signal to contiue operating for those even processes"
sleep 2
ps -ef | grep ython* | grep -v grep | awk 'NR%2==0' | xargs kill -CONT
sleep 2
echo "Let's send a signal to stop to those odd processes"
sleep 2
ps -ef | grep ython* | grep -v grep | awk 'NR%2==1' | xargs kill -9
sleep 2


#=====================================================
#question 3
#3. Write a bash program to delete any file under the pwd that contains a string in the format "XX-XX-XX" where X is a numeric character.
echo "For this part of the show, we need to create a folder in which will hold the text file inside with the required format"
sleep 2
mkdir -p TextGoesHere
cd TextGoesHere
touch dates.txt hello.txt lorem-ipsum.txt
sleep 1
echo "I have created a folder named TextGoesHere and added a text file with a date in it. for the purpose of the homework."
sleep 2
echo "here goes the command.."
sleep 3

cd ..
sleep 1
echo "let's see if there is a file with the format "xx-xx-xx"
sleep 1
grep -r "10-19-2021"
sleep 2
echo "Alright, let's remove that file with grep and some other commands piped together.."
sleep 1
ls |grep -r "10-19-2021" | cut -d ":" -f1| xargs rm -fr
sleep 1
echo "Tah-Dah!"
sleep 1
echo "Now let's do a search to see if it does show up"
sleep 1
grep -r "10-19-2021"



#=====================================================
#question 4
#4. Write a bash oneliner to STOP all processes belonging to user "joseph".
echo "The command to kill all process to the user Joseph is"

killall -u joseph

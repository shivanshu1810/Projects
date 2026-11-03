#!/bin/bash
# Linux command basics - safe practice commands
# Every command here is read-only or works in a practice folder.
# Run it line by line while you learn, or run the whole file: bash basic-commands.sh

# Where am I and who am I?
pwd
whoami
date

# What is in this folder?
ls
ls -l

# Make a practice folder and a file
mkdir -p practice
cd practice
touch notes.txt
echo "Hello from Linux" > notes.txt

# Look inside the file
cat notes.txt
head notes.txt
tail notes.txt

# Search for a word in the file
grep Hello notes.txt

# System information
uname -a
uptime
df -h
free -h

# Networking basics
ip addr
ping -c 4 8.8.8.8

# Go back and clean up
cd ..
rm -r practice
echo "Practice done"

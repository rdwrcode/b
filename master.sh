#!/bin/bash
# 
echo "Your commit message is: $1"
git add . &&
git commit -am "$1" &&
git push origin master

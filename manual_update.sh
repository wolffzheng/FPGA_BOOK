#!/bin/bash
temp_date=$(date)
git branch tmp
git checkout tmp
git add . --all
#echo "please input commit message:"
#read message
git commit -m "add books on $temp_date"
git checkout master
git merge tmp
git push origin master
git branch -d tmp

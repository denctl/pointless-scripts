#!/bin/bash

echo "Executing autopush."
echo "If you want to stop this, better do it quick. You have 3 seconds."
sleep 1
echo "1..."
sleep 1
echo "2..."
sleep 1
echo "3..."
sleep 1
	
branch=$(git status | grep "On branch" | sed 's/On branch//')
git add . && git commit -m "automated push" && git push origin $branch

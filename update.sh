#!/bin/bash

baseDir="/home/udara/pidownloader/tmp/"
gitrepoName="pidwnlist"
gitDir="$baseDir$gitrepoName"
echo "Git repository $gitDir"
gitRepo="https://github.com/udarakr/pidwnlist.git"


if [ -d $gitDir ]
then
    echo "Directory $gitDir already exists."
    cd $gitDir
    echo "Starting git update in $gitDir"
	git pull
else
	echo "Directory $gitDir not found."
    mkdir -p $baseDir
    cd $baseDir
    echo "Cloning $gitRepo"
    git clone $gitRepo
fi



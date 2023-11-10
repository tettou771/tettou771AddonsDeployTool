#!/bin/sh

currentDir=`pwd`
if test "$1" != "" -a "$2" != ""; then
	path=$1
	url=$2
	if test -d $1; then
		cd $path
		git pull
	else
		git clone $url $path
	fi
fi
cd $currentDir

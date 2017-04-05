#!/bin/bash

while getopts ":u:n:" opt;
do
	case "$opt" in

	u) sudo apt-get update
	;;

	n) sudo apt-get install $OPTARG -y
	   echo "Installed $OPTARG" >&2
	;;
	esac
done

#sudo apt-get install $PACKAGE -y

#echo $PACKAGE installed

exit 0

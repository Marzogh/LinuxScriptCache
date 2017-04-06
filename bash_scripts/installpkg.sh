#!/bin/bash

while getopts ":un:" opt;
do
	case "$opt" in

	u) UPDATE=YES
	;;

	n) UPDATE=NO
	   PACKAGE=$OPTARG
	   ;;
	esac
done

if [ $UPDATE == YES ]
then
  sudo apt-get update
fi

sudo apt-get install $PACKAGE -y

echo $PACKAGE installed

exit 0

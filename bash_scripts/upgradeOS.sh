#!/bin/bash

while getopts ":u" opt;
do
	case "$opt" in

	u) UPDATE=YES
	;;

	:) UPDATE=NO
	;;

	esac
done

if [ "$UPDATE" == "YES" ]
then
  echo Apt repository update initiated
  sudo apt-get update
  echo Apt repository update complete
fi

echo Locating and installing upgrades - if any
sudo apt-get install $PACKAGE -y
echo OS upgrade complete

exit 0

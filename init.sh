#!/bin/bash

#checking if ffmpeg is installed
ifffmpeg=$(dpkg-query -W -f='${Status}' ffmpeg 2>/dev/null | grep -c "ok installed")
ifwget=$(dpkg-query -W -f='${Status}' wget 2>/dev/null | grep -c "ok installed")
echo $ifwget
echo $PWD
read userid
if [ $ifffmpeg -eq 0 ]||[ $ifwget -eq 0 ];
then
 sudo apt-get install ffmpeg
 sudo apt-get install wget
 sudo apt install curl
 curl -L https://github.com/storj/storj/releases/latest/download/uplink_linux_amd64.zip -o uplink_linux_amd64.zip
 unzip -o uplink_linux_amd64.zip
 sudo install uplink /usr/local/bin/uplink
 uplink access import main storjaccesskey.txt
 uplink mb sj://"${userid}"

fi
 echo "All packages already installed"
 #creating directories for camera output

if [ -d "$PWD/cam1" ]
then
 echo "present"
else
 mkdir "$PWD"/cam1
 mkdir "$PWD"/cam2
 mkdir "$PWD"/cam3
 mkdir "$PWD"/cam4
 mkdir "$PWD"/cam5
 mkdir "$PWD"/cam6
 mkdir "$PWD"/cam7
 mkdir "$PWD"/cam8
 mkdir "$PWD"/cam9
 mkdir "$PWD"/cam10
fi 
 echo "done" 

 




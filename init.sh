#!/bin/bash
camurl=("pranjal")
for str in ${camurl[@]}; do
  echo $str
done
#checking if ffmpeg is installed
ifffmpeg=$(dpkg-query -W -f='${Status}' ffmpeg 2>/dev/null | grep -c "ok installed")
ifwget=$(dpkg-query -W -f='${Status}' wget 2>/dev/null | grep -c "ok installed")
echo $ifwget
if [ $ifffmpeg -eq 0 ]||[ $ifwget -eq 0 ]
then
 sudo apt-get install ffmpeg
 sudo apt-get install wget
else
 echo "All packages already installed"
 wget https://code.jquery.com/jquery-3.6.0.min.js
fi
 echo $so;


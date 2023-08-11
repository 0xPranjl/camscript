#!/bin/bash
camurl=("pranjal")
for str in ${camurl[@]}; do
  echo $str
done
#checking if ffmpeg is installed
so=$(dpkg-query -W -f='${Status}' ffmpeg 2>/dev/null | grep -c "ok installed")
if [ $so -eq 1 ]
then
 sudo apt-get install ffmpeg
else
 echo "ffmpeg already installed"
fi
 echo $so;
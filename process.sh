#!/bin/bash

camurls=("rtsp://zephyr.rtsp.stream/pattern?streamKey=582c4cb399405e77eed5b374541774d8" "rtsp://zephyr.rtsp.stream/movie?streamKey=ebcf6466a3248d80fce101638dbed263")
username=""
password=""
numcam=1
bucket="testo"

echo $PWD
cd cam1
search_dir="/home/ultronix/Desktop/camscript/cam1"
dir2="/home/ultronix/Desktop/camscript/cam1"
# i ke aage rtsp://username:password@192.168.1.123:554/stream1
c1(){
ffmpeg -hide_banner -y -loglevel error -rtsp_transport tcp -use_wallclock_as_timestamps 1 -i ${camurls[0]} -vcodec copy -acodec copy -f segment -reset_timestamps 1 -segment_time 5 -segment_format mkv -segment_atclocktime 1 -strftime 1 cam1%Y%m%dT%H%M%S.mkv &
while true
do
for entry in "$search_dir"/*
  do
  lastUpdate="$(stat -c %Y ${entry})"
  now="$(date +%s)"
  let diff="${now}-${lastUpdate}"
  echo $diff
  if [ $diff -gt 13 ]
  then
   echo $entry  
   uplink cp "$entry" sj://"${bucket}"
   unlink $entry
  fi 
  done
  sleep 15
done 
}
c2(){
ffmpeg -hide_banner -y -loglevel error -rtsp_transport tcp -use_wallclock_as_timestamps 1 -i ${camurls[1]} -vcodec copy -acodec copy -f segment -reset_timestamps 1 -segment_time 5 -segment_format mkv -segment_atclocktime 1 -strftime 1 cam2%Y%m%dT%H%M%S.mkv &
while true
do
for entry in "$dir2"/*
  do
  lastUpdate="$(stat -c %Y ${entry})"
  now="$(date +%s)"
  let diff="${now}-${lastUpdate}"
  echo $diff
  if [ $diff -gt 13 ]
  then
   echo $entry  
   uplink cp "$entry" sj://"${bucket}"
   unlink $entry
  fi 
  done
  sleep 15
done
}
c3(){
ffmpeg -hide_banner -y -loglevel error -rtsp_transport tcp -use_wallclock_as_timestamps 1 -i ${camurls[0]} -vcodec copy -acodec copy -f segment -reset_timestamps 1 -segment_time 5 -segment_format mkv -segment_atclocktime 1 -strftime 1 cam3%Y%m%dT%H%M%S.mkv &
while true
do
for entry in "$search_dir"/*
  do
  lastUpdate="$(stat -c %Y ${entry})"
  now="$(date +%s)"
  let diff="${now}-${lastUpdate}"
  echo $diff
  if [ $diff -gt 13 ]
  then
   echo $entry  
   uplink cp "$entry" sj://"${bucket}"
   unlink $entry
  fi 
  done
  sleep 15
done 
}
c4(){
ffmpeg -hide_banner -y -loglevel error -rtsp_transport tcp -use_wallclock_as_timestamps 1 -i ${camurls[1]} -vcodec copy -acodec copy -f segment -reset_timestamps 1 -segment_time 5 -segment_format mkv -segment_atclocktime 1 -strftime 1 cam4%Y%m%dT%H%M%S.mkv &
while true
do
for entry in "$dir2"/*
  do
  lastUpdate="$(stat -c %Y ${entry})"
  now="$(date +%s)"
  let diff="${now}-${lastUpdate}"
  echo $diff
  if [ $diff -gt 13 ]
  then
   echo $entry  
   uplink cp "$entry" sj://"${bucket}"
   unlink $entry
  fi 
  done
  sleep 15
done
}
c5(){
ffmpeg -hide_banner -y -loglevel error -rtsp_transport tcp -use_wallclock_as_timestamps 1 -i ${camurls[0]} -vcodec copy -acodec copy -f segment -reset_timestamps 1 -segment_time 5 -segment_format mkv -segment_atclocktime 1 -strftime 1 cam5%Y%m%dT%H%M%S.mkv &
while true
do
for entry in "$search_dir"/*
  do
  lastUpdate="$(stat -c %Y ${entry})"
  now="$(date +%s)"
  let diff="${now}-${lastUpdate}"
  echo $diff
  if [ $diff -gt 13 ]
  then
   echo $entry  
   uplink cp "$entry" sj://"${bucket}"
   unlink $entry
  fi 
  done
  sleep 15
done 
}
c6(){
ffmpeg -hide_banner -y -loglevel error -rtsp_transport tcp -use_wallclock_as_timestamps 1 -i ${camurls[1]} -vcodec copy -acodec copy -f segment -reset_timestamps 1 -segment_time 5 -segment_format mkv -segment_atclocktime 1 -strftime 1 cam6%Y%m%dT%H%M%S.mkv &
while true
do
for entry in "$dir2"/*
  do
  lastUpdate="$(stat -c %Y ${entry})"
  now="$(date +%s)"
  let diff="${now}-${lastUpdate}"
  echo $diff
  if [ $diff -gt 13 ]
  then
   echo $entry  
   uplink cp "$entry" sj://"${bucket}"
   unlink $entry
  fi 
  done
  sleep 15
done
}
c7(){
ffmpeg -hide_banner -y -loglevel error -rtsp_transport tcp -use_wallclock_as_timestamps 1 -i ${camurls[0]} -vcodec copy -acodec copy -f segment -reset_timestamps 1 -segment_time 5 -segment_format mkv -segment_atclocktime 1 -strftime 1 cam7%Y%m%dT%H%M%S.mkv &
while true
do
for entry in "$search_dir"/*
  do
  lastUpdate="$(stat -c %Y ${entry})"
  now="$(date +%s)"
  let diff="${now}-${lastUpdate}"
  echo $diff
  if [ $diff -gt 13 ]
  then
   echo $entry  
   uplink cp "$entry" sj://"${bucket}"
   unlink $entry
  fi 
  done
  sleep 15
done 
}
c8(){
ffmpeg -hide_banner -y -loglevel error -rtsp_transport tcp -use_wallclock_as_timestamps 1 -i ${camurls[1]} -vcodec copy -acodec copy -f segment -reset_timestamps 1 -segment_time 5 -segment_format mkv -segment_atclocktime 1 -strftime 1 cam8%Y%m%dT%H%M%S.mkv &
while true
do
for entry in "$dir2"/*
  do
  lastUpdate="$(stat -c %Y ${entry})"
  now="$(date +%s)"
  let diff="${now}-${lastUpdate}"
  echo $diff
  if [ $diff -gt 13 ]
  then
   echo $entry  
   uplink cp "$entry" sj://"${bucket}"
   unlink $entry
  fi 
  done
  sleep 15
done
}
c9(){
ffmpeg -hide_banner -y -loglevel error -rtsp_transport tcp -use_wallclock_as_timestamps 1 -i ${camurls[1]} -vcodec copy -acodec copy -f segment -reset_timestamps 1 -segment_time 5 -segment_format mkv -segment_atclocktime 1 -strftime 1 cam9%Y%m%dT%H%M%S.mkv &
while true
do
for entry in "$dir2"/*
  do
  lastUpdate="$(stat -c %Y ${entry})"
  now="$(date +%s)"
  let diff="${now}-${lastUpdate}"
  echo $diff
  if [ $diff -gt 13 ]
  then
   echo $entry  
   uplink cp "$entry" sj://"${bucket}"
   unlink $entry
  fi 
  done
  sleep 15
done
}
c10(){
ffmpeg -hide_banner -y -loglevel error -rtsp_transport tcp -use_wallclock_as_timestamps 1 -i ${camurls[1]} -vcodec copy -acodec copy -f segment -reset_timestamps 1 -segment_time 5 -segment_format mkv -segment_atclocktime 1 -strftime 1 cam10%Y%m%dT%H%M%S.mkv &
while true
do
for entry in "$dir2"/*
  do
  lastUpdate="$(stat -c %Y ${entry})"
  now="$(date +%s)"
  let diff="${now}-${lastUpdate}"
  echo $diff
  if [ $diff -gt 13 ]
  then
   echo $entry  
   uplink cp "$entry" sj://"${bucket}"
   unlink $entry
  fi 
  done
  sleep 15
done
}
if [ $numcam -eq 1 ]
c1
else if [ $numcam -eq 2 ]
c1 & c2
else if [ $numcam -eq 3 ]
c1 & c2 & c3
else if [ $numcam -eq 4 ]
c1 & c2 & c3 & c4
else if [ $numcam -eq 5 ]
c1 & c2 & c3 & c4 & c5
else if [ $numcam -eq 6 ]
c1 & c2 & c3 & c4 & c5 & c6
else if [ $numcam -eq 7 ]
c1 & c2 & c3 & c4 & c5 & c6 & c7
else if [ $numcam -eq 8 ]
c1 & c2 & c3 & c4 & c5 & c6 & c7 & c8
else if [ $numcam -eq 9 ]
c1 & c2 & c3 & c4 & c5 & c6 & c7 & c8 & c9
else if [ $numcam -eq 10 ]
c1 & c2 & c3 & c4 & c5 & c6 & c7 & c8 & c9 & c10
fi
done

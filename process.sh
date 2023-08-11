#!/bin/bash

camurls=("rtsp://zephyr.rtsp.stream/pattern?streamKey=582c4cb399405e77eed5b374541774d8" "rtsp://zephyr.rtsp.stream/movie?streamKey=ebcf6466a3248d80fce101638dbed263")
username=""
password=""
cd cam1
ffmpeg -hide_banner -y -loglevel error -rtsp_transport tcp -use_wallclock_as_timestamps 1 -i ${camurls[0]} -vcodec copy -acodec copy -f segment -reset_timestamps 1 -segment_time 5 -segment_format mkv -segment_atclocktime 1 -strftime 1 %Y%m%dT%H%M%S.mkv
# i ke aage rtsp://username:password@192.168.1.123:554/stream1
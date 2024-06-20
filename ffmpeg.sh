#!/bin/sh
ffmpeg -i rtsp://xxxxx:xxxxxxxxxxxx@xxx.xxx.xxx.xxx:xxx/main -c:v libx264 -hls_time 10 -hls_list_size 0 -f hls /home/delameta/rananum/rtsp/playlist.m3u8


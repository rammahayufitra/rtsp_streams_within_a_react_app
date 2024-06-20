#!/bin/sh
ffmpeg -i rtsp://admin:delameta1407@192.168.150.190:554/main -c:v libx264 -hls_time 10 -hls_list_size 0 -f hls /home/delameta/rananum/rtsp/playlist.m3u8


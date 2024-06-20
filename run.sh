#!/bin/sh
docker run -p 3000:3000 -v /home/delameta/rananum/rtsp/rtsp:/app -v /home/delameta/rananum/rtsp:/home/delameta/rananum/rtsp -it rtsp bash

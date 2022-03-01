#!/bin/sh
#sudo rmmod v4l2loopback
sudo modprobe v4l2loopback video_nr=2 card_label="Kinect v2"
v4l2-ctl --list-devices
ffmpeg \
    -i /dev/video0 \
    -vsync drop \
    -filter:v fps=30,scale=1280:-1,hflip \
    -pix_fmt yuyv422 \
    -color_trc bt709 \
    -color_primaries bt709 \
    -color_range tv \
    -f v4l2 \
    /dev/video2

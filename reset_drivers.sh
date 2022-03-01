sudo rmmod v4l2loopback
sudo /sbin/modprobe videodev
sudo /sbin/insmod ./gspca_main.ko  
sudo /sbin/insmod ./gspca_kinect2.ko  

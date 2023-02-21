######################################################################################################
Installation Mpdplayer 2.0

1.
Install Java 16/17 on Ububntu 20.04 or 18.04
https://ubuntuhandbook.org/index.php/2021/03/oracle-java-16-released-install-ubuntu-20-04/

2.
Install latest FFMPEG or use your old ( Advice use lates for quick start)
wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
tar -xf ffmpeg-release-amd64-static.tar.xz
then copy file ffmpeg from root to usr/bin

3.
Make Ramdisk 
mkdir /tmp/ramdisk
chmod 777 /tmp/ramdisk
mount -t tmpfs -o size=1024M tmpfs /tmp/ramdisk

4.
Install your Deb package
cd /home
wget https://github.com/DRM-Scripts/MPD-Player/raw/master/mpd_player.deb
dpkg -i mpd_player.deb
After install mpdplayer start automatic

5. 
Web interface
http://127.0.0.1:8989/ui
admin
123

7.
Useful commands
systemctl start mpdplayer
systemctl stop mpdplayer
systemctl restart mpdplayer

8.
If you want add auto restart
crontab -e
Please copy 
0 5 * * /opt/mpdplayer/bin/restartService.sh
I's mean every Morning at 5:00am mpdplayer going restart

9.
Don't take more 50 streams on server

10.
Enjoy and not sell solution. 

11.
Enjoy

Thank you

######################################################################################################

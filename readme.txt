######################################################################################################
#    PLEASE NOTE: NO SUPPORT GIVEN | INSTALL INSTRUCTIONS WILL BE SLIMELINED | SHARING IS CARING     #
######################################################################################################
Installation MPDPlayer 2 & 3.0 (Lancar MOD)

# IF YOU ARE HAVING STABILTY ISSUES WITH STREAMS USE V2 #

1.
Install Java 17 on Ububntu 20.04 or 18.04
https://ubuntuhandbook.org/index.php/2021/03/oracle-java-16-released-install-ubuntu-20-04/

sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:linuxuprising/java
sudo apt update
sudo apt install oracle-java17-installer

2.
Install latest FFMPEG or use your old (Advice use latest for quick start)
wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
tar -xf ffmpeg-release-amd64-static.tar.xz
cd ffmpeg-6.0-amd64-static/
mv ffmpeg /usr/bin/
mv ffprobe /usr/bin/

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

#######################################
# STOP HERE IF YOU WANT TO STAY ON V2 #
#######################################

Stop mpdplayer service systemctl stop mpdplayer

5.
Rename V2 files
mv /opt/mpdplayer /opt/mpdplayer-old
mv /etc/mpdplayer/mpd.conf /etc/mpdplayer/mpd-old.conf

6.
Download V3 files
wget https://github.com/DRM-Scripts/MPD-Player/raw/master/mpdplayer.tar
tar -xf mpdplayer.tar

7.
Copy new files
cp -R mpdplayer /opt/mpdplayer
cp mpd.conf /etc/mpdplayer

8. 
Web interface
systemctl start mpdplayer
http://127.0.0.1:8989/ui
admin
123

9.
Useful commands
systemctl start mpdplayer
systemctl stop mpdplayer
systemctl restart mpdplayer

10.
If you want add auto restart
crontab -e
Please copy 
0 5 * * /opt/mpdplayer/bin/restartService.sh
I's mean every Morning at 5:00am mpdplayer going restart

11.
Don't take more 50 streams on server

12.
Enjoy and not sell solution. 

13.
Enjoy

Thank you

######################################################################################################

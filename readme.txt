######################################################################################################
#    PLEASE NOTE: NO SUPPORT GIVEN | INSTALL INSTRUCTIONS WILL BE SLIMLINED | SHARING IS CARING      #
######################################################################################################
Installation MPDPlayer 2, Lancar Mod & Zeus

## Install Java 17 on Ububntu 20.04 or 18.04

sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:linuxuprising/java
sudo apt update
sudo apt install oracle-java17-installer

## Install latest FFMPEG or use your old (Advice use latest for quick start)

wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
tar -xf ffmpeg-release-amd64-static.tar.xz
cd ffmpeg-6.0-amd64-static/
mv ffmpeg /usr/bin/
mv ffprobe /usr/bin/

## Run Install & Install your Deb Package

cd /home
wget https://github.com/DRM-Scripts/MPD-Player/raw/master/install.sh
chmod +x ./install.sh
./install.sh

## Useful commands

systemctl start mpdplayer
systemctl stop mpdplayer
systemctl restart mpdplayer

## Cron Setup

crontab -e 
0 5 * * /opt/mpdplayer/bin/restartService.sh

######################################################################################################

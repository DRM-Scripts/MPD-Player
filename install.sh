#!/bin/bash

ubuntu_version=$(lsb_release -rs)

if [[ $ubuntu_version != "18.04" && $ubuntu_version != "20.04" ]]; then
    echo "Error: This script is only supported on Ubuntu 18.04 and 20.04."
    exit 1
fi

echo " /\$$      /\$$ /\$$$$\$$  /\$$$$\$$  /\$$$$\$$  /\$$        /\$$$$\$$  /\$$     /\$$ /\$$$$$$$$ /\$$$$\$$ "
echo "| \$$\$$    /\$$\$$__\$$  |\$$__\$$  |\$$__\$$  |\$$       /\$$__\$$|  \$$   /\$$/| \$$\$$\$$\$$/\$$__\$$"
echo "| \$$\$$\  /\$$$$$$\$$  |\$$\$$  \$$  |\$$  \$$  |\$$      |\$$  \$$\$$\  \$$\$$/ | \$$      |\$$\$$\$$"
echo "| \$$ \$\$$\$$\$$$$\$$\$$  |\$$$$\$$\$$  |\$$  |\$$      |\$$$$\$$\$$\  \$$\$/  | \$$$$   |\$$$$\$$/"
echo "| \$$  \$ \$\$$\$$\$$\$$/\$$  |\$$____/ | \$$      |\$$__\$$\$$\$$\  \$$\$/   | \$$__/   |\$$__\$$"
echo "| \$$\  \$ |\$$|\$$      | \$$  |\$$      | \$$      |\$$  |\$$|\$$    |\$$    | \$$      |\$$  \$$\$$"
echo "| \$$ \/  |\$$|\$$      | \$$$$\$$\$$  | \$$      | \$$$$\$$\$$    |\$$    | \$$$$\$\$$\$$|\$$  |\$$"
echo "|__/     |__/|__/      |_______/ |__/      |________/|__/  |__/    |__/    |________/|__/  |__/"

sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:linuxuprising/java
sudo apt-get update
sudo apt-get install -y oracle-java17-installer

wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
tar -xf ffmpeg-release-amd64-static.tar.xz
cd ffmpeg-6.0-amd64-static/
sudo mv ffmpeg /usr/bin/
sudo mv ffprobe /usr/bin/
cd ..

echo "Menu:"
echo "1. MPD Player V2"
echo "2. Lancar MOD"
echo "3. Zeus MPD Player"

read -p "Enter your choice: " choice

case $choice in
    1)
        cd /home
        wget https://github.com/DRM-Scripts/MPD-Player/raw/master/mpd_player2.deb
        sudo dpkg -i mpd_player2.deb
        ;;
    2)
        cd /home
        wget https://github.com/DRM-Scripts/MPD-Player/raw/master/lancar.deb
        sudo dpkg -i lancar.deb
        ;;
    3)
        cd /home
        wget https://github.com/DRM-Scripts/MPD-Player/raw/master/zeus.deb
        sudo dpkg -i zeus.deb
        ;;
    *)
        echo "Invalid choice"
        ;;
esac

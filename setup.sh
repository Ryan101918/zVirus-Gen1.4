#!/bin/bash

# identify system package manager ( PM means [P]ackage [M]anager )
if [ -e /data/data/com.termux/files/usr/bin/pkg ]; then PM=pkg; SUDO="" 
elif [ -e /bin/apt ]; then PM=apt; SUDO="sudo"
elif [ -e /bin/apt-get ]; then PM=apt-get; SUDO="sudo"
elif [ -e /bin/dnf ]; then PM=dnf; SUDO="sudo"
elif [ -e /bin/yum ]; then PM=yum; SUDO="sudo"
elif [ -e /bin/zypp ]; then PM=zypper; SUDO=
elif [ -e usr/local/bin/brew ]; then PM=brew; SUDO=""
else echo "
Sorry I don't know what to do.
But it's not a problem, because you just have to:
1: Install packages: git, wget, curl
2: Type this in your terminal: chmod +x zVirus && chmod +x update.sh
(to make this files executable)
"; exit
fi

# install needed packages with system package manager
$SUDO $PM install git -y
$SUDO $PM install wget -y
$SUDO $PM install curl -y

chmod +x update.sh
chmod +x zVirus

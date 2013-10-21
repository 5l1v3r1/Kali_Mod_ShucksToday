#!/bin/bash

##Ask some basic questions.

##print "Is this a basic install of Kali?"
##print "Would you like to add the "Bleeding Edge" repositories to Kali?"

##First Run: Add the "Bleeding Edge" repositories.

##echo deb http://repo.kali.org/kali kali-bleeding-edge main >> /etc/apt/sources.list

##Get some updates...

apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade

##First Run: Next, we add ALL of Kali.

apt-get install -y kali-linux-all

##Desktop & Laptop: Kali Live Build environment.

apt-get install -y git live-build cdebootstrap kali-archive-keyring

##Adding some programs that I like in every Linux distro :)

apt-get install -y vim-nox vim-doc mtr strace wipe secure-delete

##Add some programs I like in Kali ;)

apt-get -y masscan

##Laptop & Desktop: Minor program additions to make working easier.

apt-get -y install icedove

##Some other ham radio stuff - radios are fun!

apt-get install -y chirp

##We add some gems.

gem install fuzzbert ronin ronin-asm ronin-dorks ronin-exploits ronin-gen ronin-grid ronin-php ronin-scanners ronin-sql ronin-support ronin-web

##Comment these lines out if you are not using a laptop.

apt-get install -y laptop-mode-tools

##Comment these lines out if you don't have an NVidia graphics card - this doesn't work yet; the installation for winexe needs to be fixed.

#apt-get install -y nvclock nvclock-gtk

##Getting OpenVAS set up - not done yet.

#sh -c "openvas-check-setup;${SHELL:-bash}"
#sh -c "openvas-setup;${SHELL:-bash}"

##Make personal /opt, /virtual_machines, & /git directories. 

mkdir /root/opt
mkdir /root/virtual_machines
mkdir /root/git

##Here is where you perform a "git pull" to grab your personal repositories.

cd /root/git

##Let's download some shit.

cd /root/opt

# Wget some projects; it may be necessary to update the download links (especially for new versions)

wget wifipineapple.com/wp4.sh
wget https://pwn-star.googlecode.com/files/PwnSTAR_0.9.tgz
wget https://www.cookiecadger.com/files/CookieCadger-1.0.jar
wget http://www.sptoolkit.com/?aid=2755&sa=1
wget http://subterfuge.googlecode.com/files/SubterfugePublicBeta5.0.tar.gz

##Cleanup unnecessary stuff.

apt-get -y autoremove
updatedb

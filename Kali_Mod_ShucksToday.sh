#! /bin/bash

# Update & upgrade, of course
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade

# Install the Bleeding Edge repos
echo deb http://repo.kali.org/kali kali-bleeding-edge main >> /etc/apt/sources.list

# Update & upgrade now that the Bleeding Edge repos are installed
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade

# Apt-get drivers & such for my laptop (ThinkPad T61p)
#apt-get -y install hdapsd tp-smapi-dkms nvclock nvclock-gtk (this isn't finished)

# Apt-get shit that Kali needs
apt-get -y install icedove p7zip build-essential libqt4-dev qt4-doc qt4-dev-tools mtr secure-delete wipe xfs-progs python-pip libyaml mingw32 sqlmap bully lbd automater arachni ubertooth wce lib32ncurses5 ia32-libs nipper-ng python-software-properties tpb unetbootin strace basket network-manager-openvpn-gnome network-manager-pptp-gnome network-manager-vpnc-gnome gkrellm gkrellm-thinkbat gkrellmitime truecrack python-scapy beef-xss htop arp-scan kernel-package libncurses5-dev live-build cdebootstrap apt-cacher-ng gns3 chirp gpredict cdck automake1.9 checkinstall libcompfaceg1 libcompfaceg1-dev libssl-dev libssl-doc

# Add gems
gem install fuzzbert ronin ronin-asm ronin-dorks ronin-exploits ronin-gen ronin-grid ronin-php ronin-scanners ronin-sql ronin-support ronin-web

# Create /opt if it's not already there && fucking switch to it
mkdir /opt
cd /opt

# Wget some projects; it may be necessary to update the download links (especial# ly for new versions)
wget wifipineapple.com/wp4.sh
wget https://pwn-star.googlecode.com/files/PwnSTAR_0.9.tgz
wget https://www.cookiecadger.com/files/CookieCadger-1.0.jar
wget http://www.sptoolkit.com/?aid=2755&sa=1
wget http://subterfuge.googlecode.com/files/SubterfugePublicBeta5.0.tar.gz

# Subversion some projects...
svn checkout http://proxmark3.googlecode.com/svn/trunk pm3

# & Make Git requests for other projects
git clone git://git.kali.org/live-build-config.git
git clone https://bitbucket.org/LaNMaSteR53/recon-ng.git
git clone https://github.com/zcutlip/bowcaster.git
git clone https://github.com/ChrisTruncer/Veil.git

# Now to untar stuff
tar xvjf devkitARM_r41-i686-linux.tar.bz2 devkitpro/
tar xvzf PwnSTAR_0.9.tgz
tar xfvz Wi-fEye-v0.5.6.tar.gz
tar xvfz OWASP\ Mantra\ Janus\ Linux\ 64.tar.gz
tar xfvz SubterfugePublicBeta5.0.tar.gz

# Changing permissions on simple stuff
chmod +x wp4.sh
chmod +x CookieCadger-1.0.jar

# Untar & install Subterfuge

# Removing unneccessary files
rm devkitARM_r41-i686-linux.tar.bz2 devkitpro/
rm PwnSTAR_0.9.tgz
rm Wi-fEye-v0.5.6.tar.gz
rm OWASP\ Mantra\ Janus\ Linux\ 64.tar.gz
rm SubterfugePublicBeta5.0.tar.gz

# Update the locate database becasue fuck find
updatedb

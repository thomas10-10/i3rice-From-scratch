apt update
apt install i3 -y
apt install vim -y
apt install xterm -y
############################I3-gapps#############################
apt install git -y
apt install dh-autoreconf -y
apt install libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev -y
mkdir ~/i3gaps
cd ~/i3gaps
# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
make install
###########################POLYBAR##############
cd ~
apt install x11-xfs-utils -y
apt install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev -y
apt-get install cmake cmake-data libboost-dev libfreetype6-dev libxcb1-dev libx11-xcb-dev libxcb-util0-dev libxcb-image0-dev libxcb-randr0-dev libxcb-ewmh-dev libxcb-icccm4-dev xcb-proto python-xcbgen i3-wm libiw-dev libasound2-dev libmpdclient-dev -y
mkdir ~/poly
cd ~/poly
git clone --branch 3.1.0 --recursive https://github.com/jaagr/polybar
mkdir polybar/build
cd polybar/build
cmake ..
make install
###############################CONF POLYBAR#######"""
make userconfig

###enable bitmap 
cd /etc/fonts/conf.d/
rm /etc/fonts/conf.d/10*  
rm -rf 70-no-bitmaps.conf 
ln -s ../conf.avail/70-yes-bitmaps.conf .
dpkg-reconfigure fontconfig
cd ~

#siji
mkdir ~/sij && cd ~/sij
git clone https://github.com/stark/siji && cd siji
./install.sh
fc-cache
cd ~

apt install python3-pip -y
pip3 install pywal
apt install imagemagick -y
apt install alsa-utils -y
apt install ranger -y
apt install compton -y
apt install feh -y
#compton -c -r 4 -l -2 -t -4 -G -b

cp -r config1_ress/.* ~/


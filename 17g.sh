#!/bin/sh
apk add py3-yaml py3-gobject3 py3-pyparted tzdata util-linux coreutils rsync gparted setxkbmap
apk add make gettext wget
wget https://gitlab.com/ggggggggggggggggg/17g/-/archive/master/17g-master.zip -O /tmp/17g.zip
cd /tmp
unzip 17g.zip
cd  /tmp/17g-master/
make && make install
ln -s true /bin/locale-gen

#!/bin/bash

mkdir /opt/bin
curl http://downloads.activestate.com/ActivePython/releases/2.7.13.2714/ActivePython-2.7.13.2714-linux-x86_64-glibc-2.12-402178.tar.gz -o /opt/app.tar.gz

cd /opt
tar xzf app.tar.gz
mv Act* app
cd /opt/app
./install.sh -I /opt/python
ln -s /opt/python/bin/easy_install /opt/bin/easy_install
ln -s /opt/python/bin/pip /opt/bin/pip
ln -s /opt/python/bin/python /opt/bin/python
ln -s /opt/python/bin/virtualenv /opt/bin/virtualenv

#!/bin/bash

cp nfs_automount /usr/local/bin/nfs_automount

pushd . > /dev/null 2>&1
cd /usr/local/bin
chmod 700 nfs_automount
chown root:root nfs_automount
popd > /dev/null 2>&1

cp etc/nfs_automount.conf /etc/
pushd . > /dev/null 2>&1
cd /etc
chmod 640 nfs_automount.conf
chown root:root nfs_automount.conf
popd > /dev/null 2>&1

cp etc/init/nfs_automount.conf /etc/init/
pushd . > /dev/null 2>&1
cd /etc/init
chown root:root nfs_automount.conf
cd /etc/init.d
ln -s /lib/init/upstart-job nfs_automount
popd > /dev/null 2>&1

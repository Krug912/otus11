#!/bin/sh
sed -i s/mirror.centos.org/vault.centos.org/g /etc/yum.repos.d/CentOS-*.repo
sed -i s/^#.*baseurl=http/baseurl=http/g /etc/yum.repos.d/CentOS-*.repo
sed -i s/^mirrorlist=http/#mirrorlist=http/g /etc/yum.repos.d/CentOS-*.repo
yum install nfs-utils -y
systemctl enable firewalld --now
systemctl daemon-reload
systemctl restart remote-fs.target
sudo mount -o proto=udp,vers=3 192.168.50.10:/srv/share/ /mnt/

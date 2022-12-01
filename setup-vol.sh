#!/bin/bash

## CREATE DOCKER VOLUME FOLDERS
#mkdir -p ~/ELK7/vol/db0{1..3}
mkdir -p ~/ELK7/vol/certs
mkdir -p ~/ELK7/vol/es01/{data,logs}
mkdir -p ~/ELK7/vol/kibana/data/

## SETUP PERMISSION AND OWNERSHIP
sudo chmod -R 755 ~/ELK7/vol/
sudo chown -R 1000:1000 ~/ELK7/vol/

## SETUP VM MAX MAP COUNT
sudo sysctl -w vm.max_map_count=262144 
sudo cat <<EOF >> /etc/sysctl.conf
vm.max_map_count=262144
EOF
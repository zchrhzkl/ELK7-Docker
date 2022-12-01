#!/bin/bash

## CREATE DOCKER VOLUME FOLDERS
#mkdir -p vol/db0{1..3}
mkdir -p vol/certs
mkdir -p vol/es01/{data,logs}
mkdir -p vol/kibana/data/

## SETUP PERMISSION AND OWNERSHIP
sudo chmod -R 755 vol/
sudo chown -R 1000:1000 vol/

## SETUP VM MAX MAP COUNT
sudo sysctl -w vm.max_map_count=262144 
sudo cat <<EOF >> /etc/sysctl.conf
vm.max_map_count=262144
EOF
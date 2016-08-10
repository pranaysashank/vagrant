#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
	rm -rf /var/www
	ln -fs /vagrant /var/www
fi

apt-get install -y python-software-properties
LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
apt-get update

apt-get install -y php7.0-common php7.0-fpm php7.0-mysql

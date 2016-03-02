#!/bin/bash

# exit script if return code != 0
set -e

# Install Plex
apt-get -q update
apt-get install -qy dbus gdebi-core avahi-daemon wget curl supervisor
VERSION=$(curl -s https://tools.linuxserver.io/latest-plex.json| grep "version" | cut -d '"' -f 4)
wget --no-verbose -P /tmp "https://downloads.plex.tv/plex-media-server/$VERSION/plexmediaserver_${VERSION}_amd64.deb"
gdebi -n /tmp/plexmediaserver_${VERSION}_amd64.deb
rm -f /tmp/plexmediaserver_${VERSION}_amd64.deb
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

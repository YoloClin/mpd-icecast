#!/bin/bash
sed "s/MPD_ICE_PASSWORD/$MPD_ICE_PASSWORD/g" /etc/icecast.xml.template | \
    sed "s/ICE_ADMIN_PASSWORD/$ICE_ADMIN_PASSWORD/g" > /etc/icecast.xml

touch /etc/mime.types

sudo -u icecast /usr/bin/icecast -c /etc/icecast.xml

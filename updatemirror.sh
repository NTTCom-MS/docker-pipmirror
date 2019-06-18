#!/bin/bash

python3.6 /usr/bin/pypi-mirror -d /var/lib/pipmirror/packages download nagiosplugin
python3.6 /usr/bin/pypi-mirror -d /var/lib/pipmirror/packages create -m /var/lib/pipmirror/webroot

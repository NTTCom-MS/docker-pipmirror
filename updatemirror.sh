#!/bin/bash

/usr/local/bin/pypi-mirror -d /var/lib/pipmirror/packages download nagiosplugin
/usr/local/bin/pypi-mirror -d /var/lib/pipmirror/packages create -m /var/lib/pipmirror/webroot

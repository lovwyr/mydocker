#!/bin/bash

echo "omd-labs: Starting site $SITENAME..."
echo "--------------------------------------"
omd start $SITENAME
echo "--------------------------------------"

echo "omd-labs: Starting Apache web server..."
exec /usr/sbin/httpd -D FOREGROUND
#!/bin/bash

rm -rf /var/run/httpd/httpd.pid
omd stop cmk

if [ -n $LIVESTATUS_TCP ]
then
  if [ "$LIVESTATUS_TCP" = "on" ]
  then
    echo "Enable Livestatus"
    omd config cmk set LIVESTATUS_TCP on
  elif [ "$LIVESTATUS_TCP" == "off" ]
  then
    echo "Disable Livestatus"
    omd config cmk set LIVESTATUS_TCP off
  else
    echo "Disable Livestatus"
    omd config cmk set LIVESTATUS_TCP off
  fi
else
  echo "Disable Livestatus"
  omd config cmk set LIVESTATUS_TCP off
fi


echo "omd: Starting site $SITENAME..."
echo "--------------------------------------"
omd start $SITENAME
echo "--------------------------------------"

echo "omd: Starting Apache web server..."
exec /usr/sbin/httpd -D FOREGROUND
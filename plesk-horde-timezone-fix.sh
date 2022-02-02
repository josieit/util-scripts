#!/bin/bash

## Description: Horde Timezone Fix for Plesk Webserver ##
## Author: Serena Villa <josie.jp@gmail.com>

SEARCH="date.timezone"
APPEND="date.timezone = \"Europe/Rome\""
FILE="/etc/psa-webmail/horde/horde/php.ini"

if ! grep -q -F "$SEARCH" "$FILE"; then
  sed -i '/date.timezone/d' $FILE
  echo $APPEND >> $FILE
fi

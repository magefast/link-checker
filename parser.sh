#!/bin/bash
while read LINE; do
  curl -o /dev/null --silent --get --write-out "%{http_code} $LINE\n" "$LINE"
  sleep 2
done < urls.txt
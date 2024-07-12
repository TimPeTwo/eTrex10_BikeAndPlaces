#!/bin/bash
java -Xmx3500M -jar /usr/share/mkgmap/mkgmap.jar --add-pois-to-areas  --latin1 --style-file=mystyle10-base-orte-name.zip --description="OSM Orte" --family-id=9999 --gmapsupp export.osm

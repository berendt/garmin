#!/bin/sh

[ -z "$MAX_HEAP_SIZE" ] && MAX_HEAP_SIZE="4G"
[ -z "$DESCRIPTION" ] && DESCRIPTION="YAMFGD"

# java -Xmx${MAX_HEAP_SIZE} -jar /splitter/splitter.jar --output-dir=/work /data/*.osm

mkdir -p /work
cd /work

# java -Xmx${MAX_HEAP_SIZE} -jar /mkgmap/mkgmap.jar --mapname=11223344 --description="${DESCRIPTION}" --gmapsupp --route --add-pois-to-areas --family-id=9999 /data/*.osm.pbf /ahfenix.typ
java -Xmx${MAX_HEAP_SIZE} -jar /mkgmap/mkgmap.jar --mapname=11223344 --description="${DESCRIPTION}" --gmapsupp --family-id=9999 /data/*.osm.pbf /ahfenix.typ

mv gmapsupp.img /data/

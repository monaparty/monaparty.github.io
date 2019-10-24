#!/bin/bash

MAXNUM=`find ./content/blog | grep -o "[0-9]*/index.md" | sed -e 's/\/index\.md//g' | sort -n | tail -n 1`

if [ -z "$MAXNUM" ]; then
    MAXNUM=0
fi

ADDNUM=`expr ${MAXNUM} \+ 1`

hugo new blog/`date "+%Y/%-m"`/$ADDNUM/index.md
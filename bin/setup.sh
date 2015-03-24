#!/bin/bash

REPO=$(dirname $0)/../res
SEDREPO=$(echo $REPO | sed -e 's/\//\\\//g' -e 's/\./\\./g')

echo '{
    "api": "0.1",
    "files": [' > $REPO/webhelper.json

echo > tmpfile
for twig in `find $REPO -name *.twig | sed -e 's/'$SEDREPO'\///'`
do
    printf "        \"%s\",\n" $twig >> tmpfile #$REPO/webhelper.json
done

sed -e '$s/,$//' tmpfile >> $REPO/webhelper.json
rm tmpfile

echo '    ]
}' >> ${REPO}/webhelper.json

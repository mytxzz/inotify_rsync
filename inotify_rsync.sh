#!/bin/sh
SRC=/home/danny/mycode/                                                                                                             
DST=danny@10.249.6.45:/home/danny/test/
INWT=/usr/bin/inotifywait
RSYNC=/usr/bin/rsync
$INWT -mrq -e create,move,delete,modify $SRC | while read D E F ; do
#$RSYNC -ravz --delete --exclude=*.log $SRC $DST #print log 
$RSYNC -aHqz --delete --exclude=*.log $SRC $DST #no print log quietly
done

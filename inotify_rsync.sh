#!/bin/sh
SRC=/home/danny/mycode/                                                                                                             
DST=danny@10.249.6.45:/home/danny/test/
INWT=/usr/bin/inotifywait
RSYNC=/usr/bin/rsync
$INWT -mrq -e create,move,delete,modify $SRC | while read D E F ; do
$RSYNC -aHqz --delete --exclude "\.svn" $SRC $DST #no print log quietly
done

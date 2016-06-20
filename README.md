# inotify_rsync
a shell to real-time rsync

### Prepare
  make sure rsync and inotify-tools installed 

### Simple Rsycn Without Real-time 

  /usr/bin/rsync --delete-after -avzP -e ssh danny@0.0.0.0:/home/danny/test/  /home/danny/test/ 
  
  
### Usage
  nohup ./inotify_rsync.sh >output 2>&1 &

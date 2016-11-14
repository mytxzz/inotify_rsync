# inotify_rsync
a shell to real-time rsync

### Prepare

* make sure rsync and inotify-tools installed 
  
* replace the SRC and DST to your config in inotify_rsync.sh
  
  ```
    # The source dir you want to rsync
    SRC=/home/danny/mycode/  
    # The destination dir you want to rsync to.
    DST=danny@10.249.6.45:/home/danny/test/
  ```     
  
### Simple Rsycn Without Real-time 

  /usr/bin/rsync --delete-after -avzP -e ssh danny@0.0.0.0:/home/danny/test/  /home/danny/test/ 
  
  
### Usage
  nohup ./inotify_rsync.sh >output 2>&1 &

#!bin/bash
echo "Do you eant to backup your work directory? (yes/no)"
read n
if [ $n = yes -o $n = y ] ; then
   if [ ! -d ~/backups ] ; then
      mkdir ~/backups
   fi
   WORK=~/Downloads/college
   DEST=~/backups
   NAME=work-$(date +%d%-m%-y%).tar.gz
   tar -zcvf $DEST/$NAME ~/Downloads/college/
   
fi

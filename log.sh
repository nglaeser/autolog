#!/bin/bash

# make sure we're in the right directory
LOGDIR='/Users/noemi/Documents/USC/4-senior/Capstone/OpenVLab.wiki'
cd $LOGDIR

# ...and that the log is up-to-date
git pull

LOGFILE='Noemi-Glaeser-Log.md'

# Write the week number header to the wiki file
WEEKNUM=$(head -1 $LOGFILE | awk '{print($3)}')
echo "## Week $(($WEEKNUM+1))" > tempfile
echo "" >> tempfile 
/bin/cat $LOGFILE >> tempfile
/bin/cat tempfile > $LOGFILE
rm tempfile

# now git add it and commit
git add $LOGFILE
git commit -m "Updated Noemi Glaeser Log (markdown)"
git push

#!/bin/sh
# Script Name : mailarchive.sh
# Sends an email with the dump realized before
directory=`date +%Y-%m-%d`
database='DATABASE NAME'
mutt -s "Today backup" [USER EMAIL] -a /home/archives/$directory/$database.sql.bz2 < /dev/null
# End of script mailarchive.sh

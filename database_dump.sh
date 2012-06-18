#!/bin/sh
# Script name : database_dump.sh
 
directory=`date +%Y-%m-%d`
database_name='DATABASE NAME'
 
echo 'Preparing backup...'
 
if [ -d /home/archives ]; then
    mkdir /home/archives/$directory
 
    mysqldump -B --user=[USER NAME] --password=[PASSWORD] --host=[HOST]
              $database_name > /home/archives/$directory/$database_name.sql
 
    if [ $?=0 ]; then
        #Bzip2 the dump.sql
        bzip2 -z9v /home/archives/$directory/$database_name.sql
        #Remove the dump.sql from disk
        rm -f /home/archives/$directory/$database_name.sql
    fi
fi
# End of script database_dump.sh

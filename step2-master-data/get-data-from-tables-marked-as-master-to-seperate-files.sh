#!/bin/bash

TIMESTAMP=$(date +"%F")
BACKUP_DIR="/dev/shm/mysql/"
MYSQL_USER="root"
MYSQL=/usr/bin/mysql
MYSQL_PASSWORD="jaikalima"
MYSQLDUMP=/usr/bin/mysqldump
 
mkdir -p "$BACKUP_DIR"

echo "= Stage1: Get list of all databases" 
allDatabaseNames=`$MYSQL --user=$MYSQL_USER -p$MYSQL_PASSWORD -e "SHOW databases;" | grep -Ev "(Database|information_schema|performance_schema)" | grep "DB_SC"`

# Not writing the time stamp in the file name so it is easy to know if there is a diff using git diff or gitlab web interface.

# --skip-dump-date  has been given since otherwise git diff will show that the file has changed since the file have the statement
# --- Dump completed on 2020-01-29  9:10:06
# +-- Dump completed on 2020-01-29  9:11:14


for db in $allDatabaseNames; do
    echo "== Stage2: Working on DB $db"
    # Ref: https://stackoverflow.com/questions/5268936/mysqldump-only-tables-with-certain-prefix-mysqldump-wildcards
    mkdir $db
    allTableNames=`mysql $db -u $MYSQL_USER -p$MYSQL_PASSWORD -N -e 'show tables like "%Master%"'`
    for table in $allTableNames; do

	echo "=== Stage3: Working on table $table"
	echo "use $db" > $db/$table.sql
	
	echo "Executing the command mysqldump --databases $db -u $MYSQL_USER -p$MYSQL_PASSWORD $table --skip-dump-date > $db/$table.sql"
	mysqldump $db -u $MYSQL_USER -p$MYSQL_PASSWORD $table --skip-dump-date >> $db/$table.sql
    done


done




#!/bin/bash
/data/mysql/bin/mysql --socket=/data/mysql-related/mysqld.socket -uroot -pYh?8JHguIS6R -e "STOP SLAVE;RESET SLAVE ALL;set global read_only=0;"
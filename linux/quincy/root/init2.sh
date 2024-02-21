mount /dev/vdb1 /quincy
ln -s /quincy/env/git-bin/bin/git /usr/local/bin/git
ln -s /quincy/maven/apache-maven/bin/mvn /usr/local/bin/mvn
/quincy/env/redis/redis-bin/src/redis-server /quincy/env/redis/cfg/redis.conf
nohup /quincy/mysql/mysql/bin/mysqld --defaults-file=/quincy/mysql/my-master.cnf --user=mysql 2>&1 &

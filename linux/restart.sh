pid=`ps -ef|grep java|grep "payment-gateway"|grep -v grep|awk '{print $2}'`
if [ ! -z $pid ]; then
  kill -9 $pid
fi
nohup java -jar /app/repository/payment-gateway-test/payment-gateway-springboot/target/payment-gateway-springboot-0.0.1-SNAPSHOT.jar > /app/logs/payment/console.txt 2>&1 &
#service payment stop
#service payment start

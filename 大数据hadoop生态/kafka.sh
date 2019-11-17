#!/bin/bash

case $1 in
"start"){
	for i in server1 server2 servserr3
	do
		echo "-------------$i-------------"
		ssh $i 'source /etc/profile && /opt/module/kafka/bin/kafka-server-start.sh -daemon /opt/module/kafka/config/server.properties'
	done
};;

"stop"){
        for i in server1 server2 server3
        do
                echo "-------------$i-------------"
                ssh $i '/opt/module/kafka/bin/kafka-server-stop.sh'
        done
};;
esac

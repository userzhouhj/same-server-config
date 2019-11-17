#!/bin/bash

case $1 in
"start"){
	for i in server1 server2 server3
	do
		echo "--------------$i--------------"
		ssh $i 'source /etc/profile && /opt/module/zookeeper/bin/zkServer.sh start'
	done
};;

"stop"){
        for i in server1 server2 server3
        do
                echo "--------------$i--------------"
                ssh $i 'source /etc/profile && /opt/module/zookeeper/bin/zkServer.sh stop'
        done
};;

"status"){
        for i in server1 serevr2 server3
        do
                echo "--------------$i--------------"
                ssh $i 'source /etc/profile && /opt/module/zookeeper/bin/zkServer.sh status'
        done
};;

esac

ps -C FENE -o pid > pids.txt
header='PID'
while read line
do
    if [ $line != $header ]
    then
	kill -STOP $line
    fi
done < pids.txt
rm pids.txt

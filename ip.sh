ip=`hostname -I | awk '{print $1}'`

status=$(curl -o /dev/null -s -w "%(http_code)" http://$ip:60)
if [ $status==200 ]
then
exit 0
else
exit 1
fi

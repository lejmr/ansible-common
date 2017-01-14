#             System type : {{ ansible_system }}
echo "          Uptime      : $(uptime -p)"
echo "          Load        : $(cat /proc/loadavg | awk '{print $1" "$2" "$3 }')"
echo "          Memory      : $(free -m | awk '/Mem/{print $3"/"$2"MB"}')"
echo "          Swap        : $(free -m | awk '/Swap/{print $3"/"$2"MB"}')"
echo "          Disk /      : $(df / -h | awk '/\//{print "Size="$2" Used="$5" Available="$4}')"
echo
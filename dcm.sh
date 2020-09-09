#!/bin/sh
free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'
echo CPU Load: `top -bn1 | grep load | awk '{print $10 " " $11 " " $12}'`
echo CPUs: `top -b -n1 | grep "Cpu" | awk '{print $2 " " $3 " " $8 " " $9}'`
echo "test"
echo "updated"


#top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}'
# free -m | awk 'NR==2{printf "%.2f%%\t\t", $3*100/$2 }'
# df -h | awk '$NF=="/"{printf "%s\t\t", $5}'
# top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}'

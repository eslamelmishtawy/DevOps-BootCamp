awk -F : 'BEGIN {sum = 0} {sum=sum+$3} END {print sum}' /etc/passwd


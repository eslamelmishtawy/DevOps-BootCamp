awk -F : 'BEGIN {max = 0} {if ($3>max) max=$3} END {print $0}' /etc/passwd

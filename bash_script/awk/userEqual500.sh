awk -F: '$3==500{ print $1, $3, $5}' /etc/passwd

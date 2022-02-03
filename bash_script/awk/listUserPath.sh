awk -F: '{ print NR". "$1,$5,$7}' /etc/passwd

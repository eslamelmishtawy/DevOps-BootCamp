awk 'NR==5, NR==15 {print NR,$0}' /etc/passwd

#!/bin/bash
LOG_FILE="../logs/system_log_$(date +%Y%m%d).log"

{
	echo"=========================================="
	echo "Welcome, Faiez!"
	echo "=========================================="
	echo "Current Date & Time: $(date)"
	echo "------------------------------------------"

	echo -e "\n[Disk Usage]"
	df -h /

	echo -e "\n[Memory Usage]"
	free -h

	echo -e "\n[Top 5 Running Processes]"
	ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
	echo "=========================================="
} | tee -a "$LOG_FILE"

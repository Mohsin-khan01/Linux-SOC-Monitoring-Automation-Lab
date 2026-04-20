#!/bin/bash

DATE=$(date "+%Y-%m-%d_%H-%M-%S")
REPORT_DIR="$HOME/Project2_SOC_Lab/reports/hourly"
LOG_DIR="$HOME/Project2_SOC_Lab/logs"

REPORT_FILE="$REPORT_DIR/security_report_$DATE.txt"

echo "=============================" >> $REPORT_FILE
echo "SECURITY REPORT GENERATED" >> $REPORT_FILE
echo "DATE: $(date)" >> $REPORT_FILE
echo "HOSTNAME: $(hostname)" >> $REPORT_FILE
echo "USER: $(whoami)" >> $REPORT_FILE
echo "=============================" >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "---- Recent SSH Failed Logins ----" >> $REPORT_FILE
sudo grep -a "Failed password" /var/log/auth.log | tail -n 10 >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "---- Recent SSH Accepted Logins ----" >> $REPORT_FILE
sudo grep -a "Accepted" /var/log/auth.log | tail -n 10 >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "---- Invalid Users Attempt ----" >> $REPORT_FILE
sudo grep -a "Invalid user" /var/log/auth.log | tail -n 10 >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "---- UFW Firewall Status ----" >> $REPORT_FILE
sudo ufw status verbose >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "---- Last 10 Firewall Blocks (UFW Logs) ----" >> $REPORT_FILE
sudo grep -a  "UFW BLOCK" /var/log/ufw.log | tail -n 10 >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "---- Fail2Ban Status (SSH Jail) ----" >> $REPORT_FILE
sudo fail2ban-client status sshd >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Report saved to: $REPORT_FILE" >> $REPORT_FILE

echo "$(date) Report Generated: $REPORT_FILE" >> $LOG_DIR/hourly_security_reports.log

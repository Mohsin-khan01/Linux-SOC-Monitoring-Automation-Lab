# Linux-SOC-Monitoring-Automation-Lab
SOC monitoring lab with log investigation, UFW firewall logging and Bash automation
 Linux SOC Monitoring & Security Automation Lab (Project 2)

## 📌 Overview
This project is a hands-on **SOC (Security Operations Center) Monitoring Lab** built on Linux to practice real-world defensive security skills.  
The lab focuses on **log investigation, brute-force detection, firewall monitoring, and security automation** using Bash scripting and cron jobs.

This project simulates the daily workflow of a SOC/Blue Team analyst by collecting evidence from logs and generating automated security reports.

---

## 🎯 Objectives
- Build a baseline security assessment of the system
- Investigate SSH authentication logs for suspicious activity
- Detect brute-force attacks and failed login attempts
- Monitor sudo privilege usage
- Enable firewall logging and analyze blocked traffic
- Create an automated security monitoring script
- Schedule automated security reports using cron

---

## 🛠 Tools & Technologies Used
- Kali Linux (Debian-based)
- OpenSSH Server
- UFW Firewall
- Fail2Ban
- systemctl / journalctl
- `/var/log/auth.log` analysis
- `/var/log/ufw.log` analysis
- Bash Scripting
- Cron Automation
- Commands: `grep`, `awk`, `sort`, `uniq`, `tail`, `ss`, `ps`, `top`

---

## 📂 Project Structure
```text
Project2_SOC_Lab/
│── scripts/
│ └── security_monitor.sh
│── reports/
│ ├── baseline_day1.txt
│ ├── day2_log_investigation.txt
│ ├── day3_process_port_monitoring.txt
│ ├── day4_firewall_alerts_automation.txt
│ └── day5_final_incident_report.txt
│── logs/
│ └── hourly_security_reports.log
│── reports/hourly/
│ └── security_report_DATE_TIME.txt
│── screenshots/
│ └── (evidence images)
│── README.md

#!/bin/bash
# Auto-remediation for sustained CPU pressure
# Safe action: restart a known service

SERVICE_NAME="nginx"
LOGFILE="/var/log/cpu_pressure_remediation.log"

echo "$(date) CPU pressure remediation triggered" >> "$LOGFILE"

if systemctl is-active --quiet "$SERVICE_NAME"; then
  echo "$(date) Restarting $SERVICE_NAME due to CPU pressure" >> "$LOGFILE"
  systemctl restart "$SERVICE_NAME"
else
  echo "$(date) Service $SERVICE_NAME not running. No action taken." >> "$LOGFILE"
fi


## Overview
Enterprise-style Linux infrastructure monitoring using Zabbix, focused on
sustained CPU pressure detection, alert noise reduction, and operational visibility.

## Problem Statement
Traditional CPU utilization alerts often generate excessive noise and fail to
distinguish short-lived spikes from sustained CPU pressure that impacts system performance.

## Solution
- Custom CPU pressure detection using Linux load average compared against CPU core count
- Zabbix triggers based on sustained conditions rather than instantaneous thresholds
- Dashboards providing visibility into CPU utilization and pressure state

## Architecture
Monitoring design and data flow are documented in:
`architecture/monitoring_architecture.md`

## Technologies Used
- Zabbix
- Linux
- Bash
- Git / GitHub

## Key Outcomes
- Reduced false-positive CPU alerts
- Improved signal-to-noise ratio for operational monitoring
- Clear identification of real CPU saturation events


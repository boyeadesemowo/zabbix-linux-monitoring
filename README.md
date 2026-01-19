# Zabbix Infrastructure Monitoring (VMware + Linux)

This repository documents a layered infrastructure monitoring approach
implemented using Zabbix, combining VMware hypervisor visibility with
Linux agent-based monitoring.

The design prioritizes early signal detection, blast-radius awareness,
and alert noise reduction over exhaustive metric collection.

## Overview

The monitoring system follows a layered approach:

1. **Hypervisor Monitoring** – VMware ESXi host visibility
2. **Discovery-Based Monitoring** – Automatic detection of VMs and resources
3. **Agent-Based Monitoring** – Linux OS-level health and performance
4. **Selective Alerting & Escalation** – Signal-driven notifications

This approach reduces blind spots and improves root-cause analysis by
monitoring infrastructure at the appropriate layer.

## VMware Infrastructure Monitoring

Zabbix is used to monitor VMware ESXi hosts and associated resources,
providing visibility into host-level conditions that may impact multiple
virtual machines simultaneously.

Monitored signals include:
- ESXi CPU utilization
- ESXi memory usage and pressure
- Host-level resource contention indicators

Monitoring at the hypervisor layer enables earlier detection of systemic
issues than guest-only monitoring.

## Example Use Case: Sustained CPU Pressure

This use case demonstrates how Zabbix detects and responds to sustained
CPU pressure on a Linux virtual machine using agent-based monitoring and
time-windowed trigger evaluation.

Rather than alerting on transient spikes, the system evaluates CPU
utilization over a rolling five-minute window to identify real
performance degradation caused by sustained load or runaway processes.

## Demonstration

This use case is demonstrated end-to-end in a recorded walkthrough that
shows how the monitoring architecture behaves under sustained CPU load.

The demonstration covers:
- Baseline system state verification
- Sustained CPU load generation on a Linux VM
- Trigger evaluation using a five-minute rolling average
- Alert creation with visual evidence
- Automatic alert recovery once conditions normalize

🎥 **Demo Video (Loom):**  
(Add Loom link here)

Detailed documentation of this demo is available here:  
[demos/cpu-pressure-demo.md](demos/cpu-pressure-demo.md)

## Design Principles

- Monitor at the lowest layer that provides early signal
- Prefer sustained-condition detection over transient spikes
- Automate before escalating to humans
- Separate policy from implementation
- Favor safe, reversible remediation
- Minimize alert noise while preserving signal quality

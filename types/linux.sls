base:
  'G@kernel:Linux':
    - firewall
    - baseline
    - ntp
    - sysctl
    - salt.minion
    - sudoers.topicus
    - openssh
    - sssd
    - prometheus.node-exporter
    - check31

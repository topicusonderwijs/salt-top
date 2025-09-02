base:
  'G@kernel:Linux':
    - firewall
    - baseline
    - ntp
    - sysctl
    - salt.pkgrepo
    - salt.minion
    - salt.minion_systemd_override
    - sudoers.topicus
    - openssh
    - sssd
    - selinux
    - grafana-alloy
    - check31
    - netbox
    - lvm

  'G@kernel:Linux and not G@virtual:physical':
    - match: compound
    - haveged

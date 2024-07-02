base:
  'G@kernel:Linux':
    - firewall
    - baseline
    - ntp
    - sysctl
    - salt.pkgrepo
    - salt.minion
    - sudoers.topicus
    - openssh
    - sssd
    - selinux
    - grafana-alloy
    - check31

  'G@kernel:Linux and not G@virtual:physical':
    - match: compound
    - haveged

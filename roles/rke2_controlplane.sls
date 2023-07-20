base:
  'G@roles:rke2_controlplane':
    - selinux
    - salt.minion
    - rke2.repo
    - rke2.server
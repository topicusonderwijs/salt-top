base:
  'G@roles:rke2_worker':
    - selinux
    - salt.minion
    - rke2.repo
    - rke2.agent
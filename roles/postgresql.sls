base:
  'G@roles:postgresql':
    - selinux
    - sysctl
    - postgresql
    - prometheus.postgres-exporter
base:
  'G@roles:postgresql_pgbouncer':
    - selinux
    - sysctl    
    - haproxy
    - pgbouncer
    - postgresql
    - prometheus.haproxy-exporter
    - prometheus.pgbouncer-exporter 
    - prometheus.postgres-exporter 
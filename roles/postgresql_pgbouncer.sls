base:
  'G@roles:postgresql_pgbouncer':
    - selinux
    - sysctl    
    - haproxy
    - pgbouncer
    - postgresql
    - prometheus.pgbouncer-exporter 
    - prometheus.postgres-exporter 

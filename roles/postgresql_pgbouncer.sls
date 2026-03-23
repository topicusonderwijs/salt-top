base:
  'G@roles:postgresql_pgbouncer':
    - selinux
    - sysctl    
    - haproxy
    - pgbouncer
    - postgresql
    - postgresql.pgbackrest
    - prometheus.pgbouncer-exporter 
    - prometheus.postgres-exporter
    - prometheus.pgbackrest-exporter

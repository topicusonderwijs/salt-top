base:
  'G@roles:prometheus_server':
    - confd
    - prometheus.blackbox-exporter 
    - prometheus.haproxy-exporter
    - prometheus.prometheus2
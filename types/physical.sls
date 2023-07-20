base:
  'G@virtual:physical and G@manufacturer:Dell*':
    - match: compound
    - omsa
    - netsnmp
    - prometheus.dellhw-exporter
    - lldp
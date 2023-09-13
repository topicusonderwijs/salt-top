base:
# Replace with role harvest   
  'harvest-4i9.nonprod.netapp.infra.pdc.topicus.education':
    - harvest
    - grafana_agent
# Replace with roles m3aggregator and m3coordinator
  'ops-m3agg*':
    - m3.m3aggregator
    - m3.m3coordinator
    - ghostunnel
  'ctrl-*.nonprod.parnassys.*':
    - falco
    - rke2.server
  'wrkr-*.nonprod.parnassys.*':
    - rke2.agent
# Replace with role snmp-exporter
  'edu-prometheus0[0-2].*':
    - prometheus.snmp-exporter
# Replace with role rsnapshot-server
  'ops-backup01.*':
    - rsnapshot.server
    - postgresql
  'G@roles:terraform_rke2':
    - selinux
    - rke2.repo
    - prometheus.node-exporter
# Replace with role postgresql
  'pg-etl-???.nonprod.ultimview.parnassys.pdc.topicus.education':
    - postgresql
    - prometheus.postgres-exporter
  'pg-dwh-???.nonprod.ultimview.parnassys.pdc.topicus.education':
    - postgresql
    - prometheus.postgres-exporter
  'pg-app-???.nonprod.ultimview.parnassys.pdc.topicus.education':
    - postgresql
    - prometheus.postgres-exporter
    
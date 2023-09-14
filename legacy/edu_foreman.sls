base:
# Replace with role harvest   
  'harvest-4i9.nonprod.netapp.infra.pdc.topicus.education':
    - harvest
    - grafana_agent
  'ctrl-*.nonprod.parnassys.*':
    - falco
    - rke2.server
  'wrkr-*.nonprod.parnassys.*':
    - rke2.agent
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

base:
  'ctrl-*.nonprod.parnassys.*':
    - falco
    - rke2.server
  'wrkr-*.nonprod.parnassys.*':
    - rke2.agent
  'G@roles:terraform_rke2':
    - selinux
    - rke2.repo
    - prometheus.node-exporter

  'edu-prometheus02.*':
    - confd
    - prometheus.blackbox-exporter 
    - prometheus.haproxy-exporter
    - prometheus.prometheus2
    - systemupdate
  'ops-k8s-node04.topicusonderwijs.local':
    - systemupdate
  'parro-k8s-*':
    - systemupdate
  'edu-alertmanager*':
    - ghostunnel
  'ops-security-h94ls2.obsrv.infra.pdc.topicus.education':
    - nessus
  'cmb-pg-test01.vl23.pdc.topicus.education':
    - pgbouncer
  'som-pg-db1.topicusonderwijs.local':
    - pgbouncer
  'som-pg-db3.vl21.pdc.topicus.education':
    - pgbouncer

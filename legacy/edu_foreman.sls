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
    - postgresql
    - prometheus.postgres-exporter
  'som-pg-db1.topicusonderwijs.local':
    - pgbouncer
  'som-pg-db3.vl21.pdc.topicus.education':
    - pgbouncer
  'ops-nextcloud01.vl22.pdc.topicus.education':
    - postfix
  'smtp01.prod.cmld.pdc.topicus.education':
    - postfix.postmark
  'kh-artifactory01.artfcts.keyhub.pdc.topicus.education':
    - postgresql
  'parro-db01.vl23.pdc.topicus.education':
    - postgresql
  'som-pg-db06.vl21.pdc.topicus.education':
    - postgresql
  'edu-ns01.topicusonderwijs.local':
    - powerdns.server
  'edu-ns02.topicusonderwijs.local':
    - powerdns.server
  'edu-prometheus01.topicusonderwijs.local':
    - prometheus.blackbox-exporter
    - prometheus.haproxy-exporter
    - prometheus.prometheus2
  'edu-ldap02.topicusonderwijs.local':
    - prometheus.openldap-exporter
  'parnassys-db*':
    - prometheus.postgres-exporter
  'parro-db01.vl23.pdc.topicus.education':
    - prometheus.postgres-exporter
  'parro-db2.topicusonderwijs.local':
    - prometheus.postgres-exporter
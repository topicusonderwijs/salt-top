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

  'ops-k8s-node04.topicusonderwijs.local':
    - systemupdate
  'parro-k8s-*':
    - systemupdate
  'edu-ns01.topicusonderwijs.local':
    - powerdns.server
  'edu-ns02.topicusonderwijs.local':
    - powerdns.server
  'edu-ldap02.topicusonderwijs.local':
    - prometheus.openldap-exporter
  'parnassys-db*':
    - prometheus.postgres-exporter
  'parro-db2.topicusonderwijs.local':
    - prometheus.postgres-exporter
  'som-acc-pg-db.topicusonderwijs.local':
    - prometheus.postgres-exporter
  'edu-ad02.topicus.education':
    - win_zabbix
  'parnassys-wall.topicus.education':
    - win_zabbix
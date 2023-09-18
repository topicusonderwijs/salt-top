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
base:
  # TODO: Switch to rke2_* role in Terraform. See: https://github.com/topicusonderwijs/infra-terraform-modules/blob/main/previder/rke2-cluster/pillar.tf 
  # For now both roles are supported.
  'G@roles:rke2_worker or G@roles:k8s-worker':
    - selinux
    - salt.minion
    - rke2.repo
    - rke2.agent
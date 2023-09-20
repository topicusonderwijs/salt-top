base:
  'os_family:RedHat':
    - match: grain
    - selinux
    {% if salt.file.path_exists_glob('/dev/tpm0') %}
    - rngd
    {% else %}
    - haveged
    {% endif %}
    - netbox
base:
  'os_family:RedHat':
    - match: grain
    {% if salt.file.path_exists_glob('/dev/tpm0') %}
    - rngd
    {% else %}
    - haveged
    {% endif %}
    - netbox
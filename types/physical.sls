base:
  'G@virtual:physical and G@kernel:Linux':
    - match: compound
    - lldp
    {% if salt.file.path_exists_glob('/dev/tpm0') %}
    - rngd
    {% else %}
    - haveged
    {% endif %}

base:
  'G@virtual:physical and G@kernel:Linux':
    - match: compound
    - lldp
    {% if salt.file.path_exists_glob('/dev/tpm0') %}
    - rngd
    {% else %}
    - haveged
    {% endif %}

  'G@virtual:physical and G@kernel:Linux and G@manufacturer:Dell*':
    - match: compound
    - omsa
    - netsnmp
    - prometheus.dellhw-exporter

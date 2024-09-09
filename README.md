# Salt-Top

Welcome to the Salt-Top repo! 🧠💪 This repo is designed to target Salt minions 
with states using a flexible and modular approach, making your infrastructure 
setup a walk in the park. 🌳

## Overview

The `top.sls` file defines which states should be applied based on the types 
and roles of your minions. The structure of the `top.sls` file looks like this:

```yaml
include:
  - types.*
  - roles.*
  - hosts.*
```

## Types Directory

In the `types` directory, we define state files for different types of machines:

- `default.sls`  # Targets everything
- `linux.sls`    # Targets Linux machines
- `physical.sls` # Targets physical machines
- `windows.sls`  # Targets Windows hosts

### Example: `types/linux.sls`

Here's a sample configuration targeting Linux machines:

```yaml
base:
  'G@kernel:Linux':
    - firewall
    - baseline
    - ntp
    - sysctl
    - salt.pkgrepo
    - salt.minion
    - sudoers.topicus
    - openssh
    - sssd
    - selinux
    - grafana-alloy
    - check31
    - netbox
    - lvm

  'G@kernel:Linux and not G@virtual:physical':
    - match: compound
    - haveged
```

## Roles Directory

Roles are defined in the `roles` directory and allow you to group states into
a single role.

### Example: `roles/nfs.sls`

Here’s an example for a definition of an `nfs_server` and `nfs_client` role:

```yaml
base:
  'G@roles:nfs_server':
    - nfs.server
  'G@roles:nfs_client':
    - nfs.client
```

## Targeting Minions

To add the role `nfs_server` to a minion. Target the minion with the following
pillar:
```yaml
salt:
  minion:
    grain:
      roles:
        - nfs_server 
```

Execute `state.apply salt.minion` on the minion to apply the role.

Now whenever a `state.highstate` is ran, the `nfs.server` state is applied.


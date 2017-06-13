andrewrothstein.kops
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-kops.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-kops)

Installs [kops](https://github.com/kubernetes/kops).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.kops
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>

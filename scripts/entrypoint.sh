#!/bin/bash
. /tmp/venv/bin/activate
ansible-playbook /playbooks/site.yml >> /logs/ansible.txt
tail -f /dev/null

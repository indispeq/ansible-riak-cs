#!/bin/bash

set -eux

rm -rf roles/novafloss.boot

ansible-galaxy install --role-file requirements.yml --roles-path roles
ansible-playbook riak-cs-setup.yml --diff --vault-password-file .vault_pass.txt

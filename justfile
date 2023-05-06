set export

ANSIBLE_DIR := "./ansible/"
BOOTSTRAP_PLAYBOOK := "bootstrap.yml"
LIST_OF_APPS := "./assets/list_of_apps"

# display help information
help:
    @just --list

# bootstrap the homelab
bootstrap:
    ansible-playbook -vv {{ ANSIBLE_DIR }}{{ BOOTSTRAP_PLAYBOOK }} -i ansible-install-inventory -e "@ansible-install-overrides.yml"

# dry-run the bootstrap playbook
dry-bootstrap:
    ansible-playbook --check -vv {{ ANSIBLE_DIR }}{{ BOOTSTRAP_PLAYBOOK }} -i ansible-install-inventory -e "@ansible-install-overrides.yml"

# list all possible apps
list-apps:
    cat {{ LIST_OF_APPS }}

# install an application
install APP:
    # TO-DO: add logic to install an application

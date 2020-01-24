# vagrant up
vagrant ssh-config > vagrant-ssh-config
ansible-playbook -i inventory_vagrant -l default playbook.yml $*

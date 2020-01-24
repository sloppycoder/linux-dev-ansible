# vagrant up
vagrant ssh-config > vagrant-ssh-config
ansible-playbook -i inventory -l default playbook.yml $*

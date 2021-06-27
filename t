#!/bin/bash

box=boxes/$1

if [ "$box" = "boxes/" ]; then
    echo which box you want to test with?
    exit 1
fi

if [ ! -f "$box/Vagrantfile" ]; then
    echo There is not Vagrantfile under $box
    exit 1
fi

pwd=$(pwd)
cd $box
vagrant ssh-config > $pwd/vagrant-ssh-config
cd $pwd

ansible-playbook -i inventory -l default playbook.yml

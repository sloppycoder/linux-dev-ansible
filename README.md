# ansible playbook for setup a Linux machine for development work

Install the following items for my usualy development work

- install common packages including jq, git, git-gui, etc
- zsh, oh-my-zsh and custom plugin
- golang compiler
- google cloud sdk
- kubernetes related command line tools, kubectl, skaffold, kustomize

Tested on Debian/Buster and Ubuntu 18.04 LTS

## test with Vagrant

```
vagrant up
./t

```

## run on local server

```
./run
```

## TODO

Add tasks for the following

- python pipenv
- awscli v2 alpha
- flutter

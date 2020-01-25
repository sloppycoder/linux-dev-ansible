# ansible playbook for setup a Linux machine for development work

Install the following items for my usualy development work

- install common packages including jq, git, git-gui, etc
- zsh, oh-my-zsh and custom plugin
- golang compiler
- google cloud sdk
- kubernetes related command line tools, kubectl, skaffold, kustomize
- aws sdk v2 (alpha)
- sdkman, openjdk, maven
- sublime text
- nvm and nodejs runtime

Tested on Debian/Buster, Debian/Stretch and Ubuntu Bionic

## test with Vagrant

```
vagrant up
./t

```

## run on local server

```
# install git and ansible first
sudo apt install git ansible

# edit playbook.yml to select the tools needed

# start the playbook to install tools
./setup
```

## TODO

Add tasks for the following

- flutter
- auto install commonly used VSCode extensions

# ansible playbook for setup a Linux machine for development work

Install the following items for my usualy development work

- install common packages including jq, git, etc
- zsh, oh-my-zsh and custom plugin
- golang compiler
- google cloud sdk and additional components including kubectl, kustomize and skaffold
- kubernetes related command line tools, including k9s
- aws sdk v2
- sdkman, openjdk, maven
- sublime text
- nvm and nodejs runtime
- nodejs enviornment manager volta
- python environment manager poetry
- minikube

Tested on Debian/Buster, Debian/Stretch, Ubuntu Bionic, Ubuntu Focal. minikube is only tested on Ubuntu

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

- install commonly used VSCode extensions, i.e. go and python
- install istio

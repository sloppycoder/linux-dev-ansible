# ansible playbook for setup a Linux machine for development work

Install the following items for my usualy development work

- install common packages including jq, git, etc
- zsh, oh-my-zsh and custom plugin
- python package manager uv


## run on local server

```
# install git and ansible first
sudo apt install git ansible

git clone <this_repo>
cd <repo_directory>

# edit playbook.yml to select the tools needed
# start the playbook to install tools
./setup
```

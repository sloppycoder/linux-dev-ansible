# ansible playbook for setup a Linux machine for development work

Install the following items for my usualy development work

- install common packages including jq, git, etc
- zsh, oh-my-zsh and custom plugin
- python package manager uv

Tested with:
- EC2 Debian 12 VM
- AWS Linux 2023 VMs
- GCP Debian 12 VM

## run on local server

```
# install git and ansible first
sudo apt install git ansible

git clone <this_repo>
cd <repo_directory>

# edit playbook.yml to select the tools needed
# start the playbook to install tools

# for EC2 VM, or any other VM has a known username
./setup <remote_server_ip> <remote_server_username>

# override new user name and make the new user a sudoers without password
./setup <remote_server_ip> <remote_server_username> -e "new_user_name=dev1" -e "new_user_sudoer=true"

# for GCP VM, there's no fixed username
# first find out what's the user name
# gcloud compute ssh INSTANCE_NAME --zone=ZONE
# do ssh-add if the private key is protected by passphrase
ssh-add ~/.ssh/google_compute_engine
./setup <remote_server_ip> GCP_USERNAME --private-key ~/.ssh/google_compute_engine

```

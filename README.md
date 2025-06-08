# setup_linux_servers_ansible
Setup linux servers via Ansible.

## Installation 

Install the ansible package on Fedora
```
sudo dnf install ansible
```

Install openssh server on Ubuntu servers
```
sudo apt install openssh-server
```

Install openssh server on CentOS servers
```
sudo dnf install openssh-server
```

## Setup SSH Keys

Create ssh key for the linux servers
```
ssh-keygen -t ed25519 -C "salmaan default"
```

Copy the linux servers ssh key to the linux servers. Replace the ip address to the ip address of the linux servers.
```
ssh-copy-id -i -p 2222 ~/.ssh/linux_servers_ansible.pub sage@192.168.56.1
```

Check if performing ssh to the linux servers occurs automatically without a password confirmation
```
ssh -p 2222 sage@192.168.56.1
```

Create the ssh key for ansible
```
ssh-keygen -t ed25519 -C "ansible"
```

Copy the ansible ssh key to the linux servers. Replace the ip address to the ip address of the linux servers.
```
ssh-copy-id -p 2222 -i ~/.ssh/ansible.pub sage@192.168.56.1
```

Check if performing ssh to the linux servers with the ansible ssh key occurs automatically without a password confirmation
```
ssh -p 2222 -i ~/.ssh/ansible 192.168.56.1
```

## Setup and configure Ansible

Ping all of the hosts
```
ansible all -m ping
```

List all of the hosts
```
ansible all --list-hosts
```

Gather facts about the target systems
```
ansible all -m gather_facts
```

Gather facts about a particular target system
```
ansible all -m gather_facts --limit 192.168.56.1
```

## Running Elevated Commands with Ansible

Make ansible use sudo with --ask-become-pass
```
ansible all -m apt -a update_cache=true --become --ask-become-pass
```

Install the vim package via the apt module
```
ansible all -m apt -a name=vim --become --ask-become-pass
```

Install the snapd package and make sure it's the latest version available
```
ansible all -m apt -a "name=snapd state=latest" --become --ask-become-pass
```

Upgrade all the package updates that are available via apt
```
ansible all -m apt -a upgrade=dist --become --ask-become-pass
```


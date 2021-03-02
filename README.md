# Post install

## Introduction

In order to run this post install script we need to install Ansible (`dnf install ansible` on Fedora). And then use `ansible-playbook -K main.yml -u username`.
This YAML file is configured to :

- Reduce the limit of packages version to 2. (DNF)
- Install Google Chrome, vscode, and other apps
- git and vim config
- Dconf config
- Flatpak programs
- JetBrains
- Rust

## Run Ansible

## Stuff that can't be automated

### Extensions :

They have to be enabled manually with the extension App. I disbale 'Fedora Logo' and enable 'Places Status Indicator'.

### Mouse Sensitivty :

Tune it to your liking.

### Default Apps : 

Another thing to modify in the Settings app.

### Restoring From a Backup :

From a physical hard drive or Google Drive.

### Setup a root password

Using `sudo su` with newly created user and then `passwd`

### Tilix shorcut

Add a shorcut in the kerboard section of the Settings app (Ctrl + Alt + T)
# Post install

## Introduction

This YAML file is configured for Fedora :

- Reduce the limit of packages version to 2. (DNF)
- Install Google Chrome, vscode, and other apps
- git and vim config
- Dconf config
- Flatpak programs
- JetBrains
- Rust

TODO : make a complete list of the software downloaded with this and why

## Run Ansible


In order to run this post install script we need to install Ansible and then use it : 

- `sudo dnf install ansible`
- `ansible-playbook -K main.yml -u username`

## Stuff that can't be automated

### Mouse Sensitivty :

I usually keep it as is.
TODO: find a calculator/converter to get the the same sens on Windows10 and Fedora.

### Keyboard Shortcuts : 

In the Settings app -> Keyboard -> Customize Shortcuts :

- Home folder (Shortcut : Super + E)
- Add Custom Shortcut (Name : Tilix, Command : tilix, Shortcut : Ctrl + Alt + T)

### Default Apps : 

Another thing to modify in the Settings app -> Default Applications 

- Web : Firefox
- Mail : Thunderbird
- Calendar : Calendar
- Music : VLC
- Video : VLC
- Photos : Image Viewer

### Restoring From a Backup :

From a physical hard drive or Google Drive.

### Firefox or Chrome or any app settings.

Log into an account with the configuration in the cloud (I have a nextcloud instance with all my files)

### Setup a root password

Using `sudo su` with newly created user and then `passwd`
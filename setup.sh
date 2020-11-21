#!/bin/bash
# Use this script as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# To limit the number of previous versions of the same package installed 
dnf config-manager --setopt=installonly_limit=2 --save

# Install useful packages
dnf install deja-dup tilix dconf dconf-editor gnome-tweaks gnome-extensions-app gnome-shell-extension-appindicator zsh fish make automake gcc gcc-c++ kernel-devel cmake meson vim nano mumble telegram-desktop rstudio julia -y

# RPM Fusion for fedora 33 for example
wget https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-33.noarch.rpm && rpm -i rpmfusion-free-release-33.noarch.rpm
wget https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-33.noarch.rpm && rpm -i rpmfusion-nonfree-release-33.noarch.rpm

# FlatHub 
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


# Visual Studio Code
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
dnf install code code-insiders -y

# NordVPN, don't judge morty.
wget https://repo.nordvpn.com/yum/nordvpn/centos/noarch/Packages/n/nordvpn-release-1.0.0-1.noarch.rpm && rpm -i nordvpn-release-1.0.0-1.noarch.rpm

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm && rpm -i google-chrome-stable_current_x86_64.rpm

# JetBrains Toolbox
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.18.7609.tar.gz && tar xf jetbrains-toolbox-1.18.7609.tar.gz && ./jetbrains-toolbox-1.18.7609/jetbrains-toolbox

# Change keybindings for switch-applications and for switch-windows
gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "['<Shift><Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Shift><Alt>Tab']"

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# NVIDIA drivers are in RPM fusion
# dnf install akmod-nvidia

# Remember to do this :
echo "Don't forget to setup : Online Accounts and other settings (screen refresh rate, Dark theme, languages, mouse accel and sens)"
echo "AND TO RESTORE FROM A BACKUP !"
echo "(and to create a root password with : 'sudo su' and then 'passwd')"
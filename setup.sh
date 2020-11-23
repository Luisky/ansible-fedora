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

# Remember to do this :
echo "Don't forget to setup : Online Accounts and other settings (screen refresh rate, Dark theme, languages, mouse accel and sens)"
echo "AND TO RESTORE FROM A BACKUP !"
echo "(and to create a root password with : 'sudo su' and then 'passwd')"
#!/bin/bash

# Atualizar repositórios
sudo apt update
sudo apt upgrade -y

# Instalar pacotes e programas
sudo apt install -y php mysql apache2

# Instalar o Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y

# Instalar o Sublime Text
wget https://download.sublimetext.com/sublime-text_build-3211_amd64.deb
sudo dpkg -i sublime-text_build-3211_amd64.deb
sudo apt --fix-broken install -y

# Instalar o AnyDesk
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo apt install -y anydesk

# Instalar o VirtualBox
wget https://download.virtualbox.org/virtualbox/7.0.8/virtualbox-7.0_7.0.8-156879~Ubuntu~jammy_amd64.deb
sudo dpkg -i virtualbox-7.0_7.0.8-156879Ubuntujammy_amd64.deb
sudo apt --fix-broken install -y

# Instalar o VS Code
wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64 -O code.deb
sudo dpkg -i code.deb
sudo apt --fix-broken install -y

# Instalar o Docker
sudo apt install -y docker docker-compose

# Instalar o XAMPP
wget "https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/7.4.27/xampp-linux-x64-7.4.27-2-installer.run/download" -O xampp-installer.run
chmod +x xampp-installer.run
sudo ./xampp-installer.run

# Limpar pacotes desnecessários
sudo apt autoremove -y

# Finalizar o script
echo "Instalação concluída."
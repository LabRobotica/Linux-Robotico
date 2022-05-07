#!/bin/bash

clear
echo "####################################################################################"
echo "##										##"
echo "##                 Bem vindo a instalação do Linux Robótico 			##"
echo "##										##"
echo "####################################################################################"
echo ""
echo ""
echo ""
echo ""
echo ""
echo "--> Distribuição Linux recomendada:   Lubuntu 22.04 <--"
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "####################################################################################"
echo "##										##"
echo "##           Removendo programas pré-instalados do Lubuntu 22.04 			##"
echo "##										##"
echo "####################################################################################"
echo ""
echo ""
echo ""
sudo apt autoremove qtpass screengrab 2048-qt quassel transmission-qt transmission-common skanlite picom noblenote compton info -y


set -e #A partir de agora qualquer comando que retorar erro irá encerrar a execução do script


clear
echo "####################################################################################"
echo "##										##"
echo "##                       Atualizando Sistema Operacional				##"
echo "##										##"
echo "####################################################################################"
sudo apt update
sudo apt upgrade -y


clear
echo "####################################################################################"
echo "##										##"
echo "##                        Instalar Programas Básicos				##"
echo "##										##"
echo "####################################################################################"
sudo apt install git chromium-browser deepin-icon-theme qt5-gtk2-platformtheme gnome-screenshot gedit gparted gimp inkscape vlc unrar curl -y


clear
echo "####################################################################################"
echo "##										##"
echo "##                            Instalando Spotify					##"
echo "##										##"
echo "####################################################################################"
echo ""
echo "---> Executando passo a passo fornecido pelo desenvolvedor <---"
echo ""
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1l-1ubuntu1_amd64.deb
sudo apt update
sudo apt install spotify-client ./libssl1.1_1.1.1l-1ubuntu1_amd64.deb -y
rm libssl1.1_1.1.1l-1ubuntu1_amd64.deb


clear
echo "####################################################################################"
echo "##										##"
echo "##                               Instalando ROS					##"
echo "##										##"
echo "####################################################################################"
echo ""
echo "---> Executando passo a passo fornecido pelo desenvolvedor <---"
echo ""
sudo apt install gnupg lsb-release
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2-testing/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
sudo apt update
sudo apt install ros-humble-desktop -y
source /opt/ros/humble/setup.bash

clear
echo "####################################################################################"
echo "##										##"
echo "##                             Instalando Gazebo					##"
echo "##										##"
echo "####################################################################################"
echo ""
echo "---> Executando passo a passo fornecido pelo desenvolvedor <---"
echo ""
sudo apt-get install lsb-release wget gnupg
sudo wget https://packages.osrfoundation.org/gazebo.gpg -O /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/gazebo-stable.list > /dev/null
sudo apt-get update
sudo apt-get install ignition-fortress -y

clear
echo "####################################################################################"
echo "##										##"
echo "##                             Instalando Webots					##"
echo "##										##"
echo "####################################################################################"
echo ""
echo "---> Baixando binário *.deb <---"
echo ""
wget -c https://github.com/cyberbotics/webots/releases/download/R2022a/webots_2022a_amd64.deb
echo ""
echo "---> Iniciando instalação <---"
echo ""
sudo apt install ./webots_2022a_amd64.deb -y

clear
echo "####################################################################################"
echo "##										##"
echo "##                         Instalando CoppeliaSim EDU				##"
echo "##										##"
echo "####################################################################################"
echo ""
echo "---> Executando instalador online <---"
echo ""
curl https://raw.githubusercontent.com/LabRobotica/CoppeliaSim-Linux-Install/main/CoppeliaSim-Linux-Install.sh | sudo bash



clear
echo "####################################################################################"
echo "##										##"
echo "##                             Instalando Robix					##"
echo "##										##"
echo "####################################################################################"
echo ""
echo "---> Executando instalador online <---"
echo ""
curl https://raw.githubusercontent.com/LabRobotica/RobixLinux/main/robix-debian.sh | sudo bash

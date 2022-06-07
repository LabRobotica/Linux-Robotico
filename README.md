# Linux Robótico

Script para aperfeiçoar sistemas operacionais baseados em linux criando um ambiente de desenvolvimento e simulação robótica. Ele executa a instalação automática de programas afins a robótica, bem como outros ultilitários.

## Recomendações

O [Sistema Operacional Robótico (ROS)](http://docs.ros.org/en/humble/index.html) é desenvolvido como principal "alvo" o Ubuntu, portanto é o sistema mais fácil de instalar o ROS (Binarios disponíveis em repositório), é o sistema com mais suporte e menor probabilidade de bugs. Entretanto o Ubuntu vem com um ambiente desktop relativamente pesado, que é o GNOME, a qual não agrega em nada a uma simulação robótica, ou a um ambiente de desenvolvimento robótico. Felizmente existem as flavours do Ubuntu que são basicamente o Ubuntu com outras interfaces gráficas.

- Distribuição recomendada: Lubuntu 22.04
- Ambiente de desktop recomendado: LXDE

Para alterar o ambiente de desktop do Lubuntu (LXQt) para o LXDE, execute [este script](https://github.com/LabRobotica/Linux-Robotico/).

## Instalação automática

Execute o instalador com o comando abaixo:

```bash
curl https://raw.githubusercontent.com/LabRobotica/Linux-Robotico/main/linux-robotico.sh | sudo bash
```

Leia atentamente as mensagens do terminal a procura de algum erro, ou para seguir corretamente as instruções.

OBS: Caso o ```cURL``` não esteja instalado, primeiramente execute o comando:

```bash
sudo apt install curl
```

## Lista de Programas Instalados

### Programas relacionados a robótica

- ROS2 | Humble Hawksbill 2022 LTS
- Gazebo | Classic 11.10.2
- Webots | 2022a
- CoppeliaSim | EDU V4.3.0 rev3
- Robix | Usbor 1.1.0
- RoboDK | 5.4
- RoboAnalyzer | V7.5 (Wine) 

### IDE's / Editores de texto puro
- Visual Studio Code
- Geany
- Gedit

### Personalização
- deepin-icon-theme
- qt5-gtk2-platformtheme

### Editores de Imagens/Vetores
- gimp
- inkscape

### Ferramentas administrativas
- gparted
- grub-customizer

### Outros
- git
- chromium-browser
- gnome-screenshot
- spotify
- vlc
- unrar

## Lista de programas removidos

No caso do sistema operacional ser o Lubuntu 22.04 os seguintes programas serão removidos:

- qtpass
-	screengrab
-	2048-qt
-	quassel
- transmission-qt
- transmission-common
- skanlite
- picom
- noblenote
- compton
- info

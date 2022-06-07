# Linux Robótico

Script para aperfeiçoar sistemas operacionais baseados em linux criando um ambiente de desenvolvimento e simulação robótica. Ele executa a instalação automática de programas afins a robótica, bem como outros ultilitários.


## Recomendações e discussões

- Distribuição recomendada: [Lubuntu 22.04](https://cdimage.ubuntu.com/lubuntu/releases/22.04/release/lubuntu-22.04-desktop-amd64.iso) [(Download via Torrent)](https://cdimage.ubuntu.com/lubuntu/releases/22.04/release/lubuntu-22.04-desktop-amd64.iso.torrent)
- Ambiente de desktop recomendado: [LXDE]()

Para mais detalhes leiam as discussões abaixo.


### Sistemas baseados em Debian: Ubuntu e suas flavour's

O [Sistema Operacional Robótico (ROS)](http://docs.ros.org/en/humble/index.html) é desenvolvido como principal "alvo" o [Ubuntu](https://ubuntu.com/), portanto é o sistema mais fácil de instalar o ROS (Binarios disponíveis em repositório), é o sistema com mais suporte e menor probabilidade de bugs. 

Apesar disso, o Ubuntu vem com um ambiente desktop relativamente pesado, que é o [GNOME](https://www.gnome.org/), a qual não agrega em nada a uma simulação robótica, ou a um ambiente de desenvolvimento robótico. Felizmente existem as flavours do Ubuntu que são basicamente o Ubuntu com outros ambiente desktop's.

O ambiente desktop mais leve do mundo linux é o [LXDE](http://www.lxde.org/) que vinha com a flavour [Lubuntu](https://lubuntu.me/), mas a partir da versão 18.10 esta flavour passou a utilizar o ambiente desktop [LXQt](https://lxqt-project.org/), e hoje infelizmente não existe uma flavour oficial do Ubuntu para LXDE. Caso você queira, ou realmente tenha a necessidade de utilizar o ambiente desktop LXDE, você pode fazer isso fácilmente: primeiro instalando o Lubuntu e depois executando [este script](). OBS: Você pode realizar a instalação do Linux Robótico primeiro, caso sinta a nessecidade (ou vontade de experimentar) executar o script de alteração de ambiente desktop.

Existe um outro ambiente deskop tão leve quanto LXQt, é chamado [XFCE](https://www.xfce.org/) e vem com a flavour [Xubuntu](https://xubuntu.org/). Existe um ambiente desktop muito famoso chamado [KDE](https://kde.org/) e vem com a flavour [Kubuntu](https://kubuntu.org/). Fica ao seu critério escolher de acordo com suas necessidades, gostos e capacidade de processamento/memória.


#### Debian

Como explicado anteriormente, o ROS é desenvolvido como alvo de instalação o Ubuntu, logo o suporte ao Debian é precário, apesar de ser possível instalar nele.

No caso, este script não irá tentar instalar o ROS caso o sistema operacional seja um Debian, ou algum outro sistema baseado no Debian diferente do Ubuntu Jammy. Mas o script irá **tentar** instalar o restante dos programas.


### Arch Linux

Está em desenvolvimento um script de instação para Arch Linux. Em breve será lançado.


## Instalação automática

Para sistemas baseados em Debian/Ubuntu, apenas execute o instalador com o comando abaixo:

```bash
curl https://raw.githubusercontent.com/LabRobotica/Linux-Robotico/main/debian-robotico.sh | sudo bash
```

Leia atentamente as mensagens do terminal a procura de algum erro, ou para seguir corretamente as instruções.

OBS: Caso o ```cURL``` não esteja instalado, primeiramente execute o comando:

```bash
sudo apt install curl
```

## Lista de Programas Instalados

### Programas relacionados a robótica

- ROS2
  - Humble Hawksbill 2022 LTS

- Gazebo
  - Classic 11.10.2

- Webots
  - 2022a

- CoppeliaSim (antigo V-REP)
  - EDU V4.3.0 rev3

- Robix
  - Usbor 1.1.0

- RoboDK
  - 5.4

- RoboAnalyzer
  - V7.5 (Wine)


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

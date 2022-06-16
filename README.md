# Linux Robótico

Script para aperfeiçoar sistemas operacionais baseados em linux criando um ambiente de desenvolvimento e simulação robótica. Ele executa a instalação automática de programas afins a robótica, bem como outros ultilitários.


## Recomendações e discussões

- Distribuição recomendada: [Lubuntu 22.04](https://cdimage.ubuntu.com/lubuntu/releases/22.04/release/lubuntu-22.04-desktop-amd64.iso) [(Download via Torrent)](https://cdimage.ubuntu.com/lubuntu/releases/22.04/release/lubuntu-22.04-desktop-amd64.iso.torrent)
- Ambiente de desktop recomendado: [LXDE (com Ubuntu)](https://github.com/LabRobotica/LubuntuLXDE)

Para mais detalhes leiam as discussões abaixo.


### Distribuições baseadas em Debian: Ubuntu e suas flavour's

O [Sistema Operacional Robótico (ROS)](http://docs.ros.org/en/humble/index.html) é desenvolvido como principal "alvo" o [Ubuntu](https://ubuntu.com/), portanto é a distribuição mais fácil de instalar o ROS (Binarios disponíveis em repositório), com mais suporte e com menor probabilidade de bugs. 

Apesar disso, o Ubuntu vem com um ambiente desktop relativamente pesado para alguns computadores, que é o [GNOME](https://www.gnome.org/), especialmente quando se vai executar ao mesmo tempo uma simulação em tempo real, ou programas de modalagem 3D. Se for o seu caso, felizmente existem as flavour's do Ubuntu que são basicamente o Ubuntu com outros ambiente desktop's.

O ambiente desktop mais leve do mundo linux é o [LXDE](http://www.lxde.org/) que vinha com a flavour [Lubuntu](https://lubuntu.me/), mas a partir da versão 18.10 esta flavour passou a utilizar o ambiente desktop [LXQt](https://lxqt-project.org/), e hoje infelizmente não existe uma flavour oficial do Ubuntu para LXDE. Caso você queira/precise utilizar o ambiente desktop LXDE devido a limitações de processamento/memória do seu computador, você pode fazer isso fácilmente instalando o Lubuntu e depois executando [este passo a passo](https://github.com/LabRobotica/LubuntuLXDE). OBS: Você pode realizar a instalação do Linux Robótico primeiro, caso sinta a nessecidade (ou vontade de experimentar), basta executar o passo a passo para alterar o ambiente de desktop.

Existe um outro ambiente desktop tão leve quanto LXQt (não confunda com LXDE), é chamado [XFCE](https://www.xfce.org/) e vem com a flavour [Xubuntu](https://xubuntu.org/). Existe um ambiente desktop muito famoso chamado [KDE](https://kde.org/) e vem com a flavour [Kubuntu](https://kubuntu.org/). Fica ao seu critério escolher de acordo com suas necessidades, gostos e capacidade de processamento/memória.


#### Debian

Como explicado anteriormente, o ROS é desenvolvido como alvo de instalação o Ubuntu, logo o suporte ao Debian é precário, apesar de ser possível instalar nele.

No caso, este script não irá tentar instalar o ROS caso a distribuição seja o Debian (ou algum outro sistema baseado no Debian diferente do Ubuntu Jammy e derivados) mas irá pelo menos **tentar** instalar o restante dos programas.


### Arch Linux

Está em desenvolvimento um script de instação para Arch Linux. Em breve será lançado.


## Instalação automática

Para distribuições baseadas em Debian/Ubuntu, apenas execute o instalador com o comando abaixo:

```bash
curl https://raw.githubusercontent.com/LabRobotica/Linux-Robotico/main/debian-robotico.sh | bash
```

Leia atentamente as mensagens do terminal a procura de algum erro, ou para seguir corretamente as instruções.

OBS: Caso o ```cURL``` não esteja instalado, primeiramente execute o comando:

```bash
sudo apt install curl
```

## Lista de Programas Instalados


### Programas relacionados a robótica

|  Programa     |  Versão                      | 
|---------------|------------------------------|
|  ROS2         |  Humble Hawksbill 2022 LTS   |
|  Gazebo       |  Classic 11.10.2*            |
|  Gazebo       |  Ignition Fortress LTS       |
|  Webots       |  2022a                       |
|  CoppeliaSim  |  EDU V4.3.0 rev3             |
|  Robix        |  Usbor 1.1.0                 | 
|  RoboDK       |  5.4                         |
|  RoboAnalyzer |  V7.5 (wine)                 |

*No Debian Bullseye a versão é 11.1.0


### Programas Extras


| IDE's / Editores de texto puro |
|--------------------------------|
| Visual Studio Code             |
| Geany                          |
| Gedit                          |


| Personalização                 |
|--------------------------------|
| deepin-icon-theme              |
| arc-theme                      |


| Editores de Imagens/Vetores    |
|--------------------------------|
| gimp                           |
| inkscape                       |


| Ferramentas administrativas    |
|--------------------------------|
| gparted                        |
| grub-customizer                |


| Outros                         |
|--------------------------------|
| git                            |
| chromium-browser               |
| gnome-screenshot               |
| spotify                        |
| vlc                            |
| unrar                          |

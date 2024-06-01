#!/bin/bash
sudo apt-get update -y
sudo apt-get install zsh tmux neovim ruby git vim openjdk-11-jdk openjdk-11-jre seclists exiftool gobuster golang-go code-oss  python3 python3-pip python3-dev git libssl-dev libffi-dev build-essentia -y

mv .tmux.conf ~/.tmux.conf
mv .zshrc ~/.zshrc
mkdir ~/.config/nvim -p
mv init.vim ~/.config/nvim/init.vim

cd $HOME
sudo python3 -m pip install --upgrade pip
sudo python3 -m pip install --upgrade pwntools

cd $HOME
mkdir bin
cd bin
wget https://github.com/0vercl0k/rp/releases/download/v1/rp-lin-x64
mv rp-lin-x64 rp
chmod +x rp

cd $HOME
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh

cd $HOME
mkdir tools
cd tools
git clone https://github.com/radareorg/radare2
cd radare2
chmod +x sys/install.sh
sh sys/install.sh

cd $HOME
cd tools
git clone https://github.com/SecureAuthCorp/impacket
cd impacket
python3 -m pip install .

cd $HOME
cd tools
wget https://jitpack.io/com/github/frohoff/ysoserial/master-SNAPSHOT/ysoserial-master-SNAPSHOT.jar
mv ysoserial-master-SNAPSHOT.jar ysoserial.jar

cd $HOME
cd tools
sudo apt install -y git build-essential apt-utils cmake libfontconfig1 libglu1-mesa-dev libgtest-dev libspdlog-dev libboost-all-dev libncurses5-dev libgdbm-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev libbz2-dev mesa-common-dev qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools libqt5websockets5 libqt5websockets5-dev qtdeclarative5-dev golang-go qtbase5-dev libqt5websockets5-dev libspdlog-dev python3-dev libboost-all-dev mingw-w64 nasm
git clone https://github.com/HavocFramework/Havoc.git
cd Havoc/Client
make
cd $HOME
cd tools
cd Havoc/Teamserver
go mod download golang.org/x/sys  
go mod download github.com/ugorji/go
./Install.sh
make

cd $HOME
wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_10.2_build/ghidra_10.2_PUBLIC_20221101.zip
unzip ghidra_10.2_PUBLIC_20221101.zip
rm ghidra_10.2_PUBLIC_20221101.zip

sudo apt-get install python3-dev libffi-dev build-essential virtualenvwrapper -y
python3 -m pip install angr

sudo gem install one_gadget evil-winrm

go get -u github.com/ffuf/ffuf

sudo apt install -y docker.io

cd /usr/share/wordlist
sudo git clone https://github.com/fuzzdb-project/fuzzdb
sudo gzip -d rockyou.txt.gz
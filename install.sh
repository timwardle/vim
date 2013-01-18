#!/bin/bash

thisDir=$(cd $(dirname "$0"); pwd)

echo "Installing Vim..."
sudo apt-get install -y vim

echo "Installing Exuberant Ctags..."
sudo apt-get install -y exuberant-ctags

echo "Backing up existing Vim config..."
if [ -e ~/.vimrc ]
then
	mv ~/.vimrc ~/.vimrc.backup
fi

echo "Linking to new Vim config..."
ln -s -f $thisDir/vimrc ~/.vimrc

echo "Linking Vim files..."
ln -s -f $thisDir/vim ~/.vim
if [ ! -d $thisDir/vim/tmp ]
then
    mkdir $thisDir/vim/tmp
fi

echo "Vim config installed"

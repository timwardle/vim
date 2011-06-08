#!/bin/bash

thisDir=$(cd $(dirname "$0"); pwd)

echo "Installing Exuberant Ctags..."
sudo apt-get install -y exuberant-ctags

echo "Backing up existing Vim config..."
mv ~/.vimrc ~/.vimrc.backup

echo "Linking to new Vim config..."
ln -s $thisDir/vimrc ~/.vimrc

echo "Vim config installed"

#!/bin/bash

FONT_PATH="$HOME/.local/share/fonts"
NVIM_PATH="$HOME/.config/nvim"

if [ ! -d "$NVIM_PATH/tmp" ]; then
  mkdir -v -p "$NVIM_PATH/tmp" 
fi

cd "$NVIM_PATH/tmp" 
wget -v https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
unzip *.zip

if [ ! -d "$FONT_PATH" ]; then 
 mkdir $FONT_PATH
fi

mv -v *.ttf "$FONT_PATH"
fc-cache -f -v
rm -v *.txt *.md *.zip
rmdir -v "$NVIM_PATH/tmp"

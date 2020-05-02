#!/usr/bin/env bash

declare -A files
files[~/.Xresources]=./.Xresources

files[~/.zshrc]=./.zshrc
files[~/.aliases]=./aliases

# termite
files[~/.config/termite/*]=./termite

# polybar
files[~/.config/polybar/config]=./polybar
files[~/.config/polybar/launch.sh]=./polybar

# bin files
files[~/bin/bat.sh]=./bin/
files[~/bin/vol.sh]=./bin/

# i3
files[~/.config/i3/config]=./i3/config

# starship
files[~/.config/starship.toml]=./starship.toml

for i in "${!files[@]}"
do
  echo "copying $i"
  cp $i ${files[$i]}
done
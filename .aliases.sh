#!/usr/bin/env sh

# Enable color support of ls and also add handy aliases
if [ $SHELL = "/bin/bash" ]; then
  shopt -s expand_aliases
  alias sorc="source $HOME/.bashrc"#!/usr/bin/env sh
elif [ $SHELL = "/bin/zsh" ]; then
  setopt aliases
  alias sorc="source \"$ZDOTDIR/.zshrc\""
fi

# Some more ls aliases
alias xinit="xinit -- :0 vt12 &>/dev/null &"
alias ls='ls -p --color=auto'


# Cds
alias cd_nvim="cd ~/.config/nvim/"


# Editors
alias v="nvim --clean"
alias vi="nvim --cmd 'let g:setup=\"minimal\"'"
alias vim="nvim --cmd 'let g:setup=\"default\"'"
alias vimr="nvim -S $HOME/.local/share/nvim/swap/session.vim"
alias vimp='nvim --cmd "set rtp+=$(pwd)" .'
alias carla='docker run --user carla --name carla --privileged -it --rm --gpus all --net=host --device=/dev/snd --group-add=audio -e DISPLAY=:0 -v /tmp/.X11-unix:/tmp/.X11-unix -v /run/dbus/:/run/dbus/:rw -v /dev/shm:/dev/shm carlasim/carla:master /bin/bash'


# Audio & video
alias toggle-sink='pactl set-sink-mute 0 toggle';
alias sinkvol='amixer sset Master'
alias mpvq='mpv --hwdec=auto --msg-level=all=error'
alias mpvl='mpv --hwdec=auto --msg-level=all=error --loop --video=no'


# Devices
alias lsblk='lsblk -apf'
alias openubuntu='sudo bash -c "echo "qwerhjklyuio" | cryptsetup open /dev/sdb3 dm_crypt-0" && sleep 2 && sudo mount /dev/mapper/ubuntu--vg-ubuntu--lv /mnt'
alias closeubuntu='sudo umount /mnt && sleep 2 && sudo cryptsetup close ubuntu--vg-ubuntu--lv && sleep 2 && sudo cryptsetup close dm_crypt-0'


# Networking
alias getmypubipaddress="curl https://ipinfo.io/ip"

# Hacking
alias to=". torsocks on"
alias tf=". torsocks off"


# Linux utilities
alias check-unicode="printf '\xe2\x82\xac\n'"
alias getweather='curl wttr.in'
alias info="info --vi-keys"

## LANGUAGES ##

# Xorg
alias import="sleep 3 && import"

# Nvidia
alias low="nvidia-settings -a '[gpu:0]/GPUPowerMizerMode=2'"
alias auto="nvidia-settings -a '[gpu:0]/GPUPowerMizerMode=1'"

# Mysql
alias mysql="mysql --prompt='>> ' -u hamza -p"

# Vmware


# Carla docker
alias carla-bash="docker run --name carla --privileged -it --rm --gpus all --net=host --device=/dev/snd --group-add=audio -e DISPLAY=:0 -v /tmp/.X11-unix:/tmp/.X11-unix -v /run/dbus/:/run/dbus/:rw -v /dev/shm:/dev/shm cl/cl:latest /bin/bash"
alias carla-cp="docker cp . carla:/home/carla"

# Docker
alias docker-lsc="docker container ls"
alias docker-lsm="docker image ls"
alias docker-lsm="docker commit carla cl/cl:latest"
alias qemu-ubuntu="qemu-system-x86_64 -enable-kvm -vga std -smp 4 -cpu host -m 4G -drive file=$HOME/os/ws,format=raw"
alias qemu-windows="qemu-system-x86_64 -enable-kvm -vga std -smp 4 -cpu host -m 4G -drive file=$HOME/os/wd,format=raw"
alias xclipc="xclip -selection clipboard"
alias xclipp="xclip -selection primary"


# Php
alias art="php artisan"

# Vnc
alias vncviewer='vncviewer localhost:5900'

# Jupyter-qtconsole
alias jupyter-qtconsole="jupyter-qtconsole &>/dev/null &"

# Stuff
alias prayer-time='curl --silent "https://api.pray.zone/v2/times/today.json?city=clermont-ferrand" | jq ".results.datetime | .[0] | .times"'
alias side-monitor='xrandr --output eDP-1-1 --primary --output HDMI-0 --right-of eDP-1-1'

#!/bin/bash

#kernel
pacman -Q $kernel base linux-firmware sof-firmware

#man pages
pacman -Q man-db man-pages texinfo
which man info

#which
pacman -Q which
which which

#sudo
pacman -Q sudo
which sudo

#AUR helper
pacman -Q git base-devel aura
which git gcc aura

#Network manager
pacman -Q networkmanager
systemctl is-enabled NetworkManager
which nmcli

#bootloader
pacman -Q grub
file /boot/grub/grub.cfg

#GUI
pacman -Q xorg-server xorg-xinit
which startx

#terminal emulator
pacman -Q xterm
which xterm

#window manager
pacman -Q ratpoison
which ratpoison

#screenshot
pacman -Q imagemagick
which import

#text editor
pacman -Q vim
which vim

#sound
pacman -Q alsa-utils pulseaudio pavucontrol apulse
which alsamixer amixer pulseaudio pavucontrol apulse

#spaced repetition software
pacman -Q anki
which anki

#sandboxing software
pacman -Q firejail
which firejail

#web browser
pacman -Q brave torbrowser-launcher
which brave torbrowser-launcher

#bash completion
pacman -Q bash-completion

#bash floating point arithmetic
pacman -Q bc
which bc

#backup
pacman -Q rsync duplicity
which rsync duplicity

#video and audio format converter
pacman -Q ffmpeg
which ffmpeg

#notify send
pacman -Q libnotify notification-daemon
which notify-send

#music player
pacman -Q moc
which moc

#video player
pacman -Q vlc
which vlc

#programming languages
pacman -Q python python-pip
which python pip

#chess
pacman -Q scid_vs_pc stockfish
which scid stockfish

#messanger
pacman -Q signal-desktop
which signal-desktop

#image viewer
pacman -Q sxiv
which sxiv

#google translate
pacman -Q translate-shell
which trans

#hypervisor
pacman -Q virtualbox
which virtualbox

#setclip
pacman -Q xclip
which xclip

#software that downloads videos from youtube
pacman -Q youtube-dl
which youtube-dl

#pdf reader
pacman -Q zathura
which zathura

#software_for_battery_power_thermal_readings
pacman -Q acpi
which acpi

#word alternative
pacman -Q libreoffice onlyoffice
which libreoffice onlyoffice-desktopeditors

#image editor
pacman -Q ksnip inkscape
which ksnip inkscape

#password manager
pacman -Q pass
which pass

#ssh
pacman -Q openssh ssh-ident
which ssh

#udisksctl
pacman -Q udisks2
which udisksctl

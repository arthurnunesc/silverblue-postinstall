#!/usr/bin/env bash

sudo ostree admin pin 0
rpm-ostree upgrade

sudo hostnamectl set-hostname silverblue

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo

rpm-ostree install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

rebooteie

rpm-ostree install ffmpeg gstreamer1-libav fuse-exfat zsh git vim-enhanced gnome-tweaks dconf-editor java-latest-openjdk neofetch

rebooteie

toolboxParaProgramar=(
    mozilla-fira-sans-fonts
    mozilla-fira-mono-fonts
    jetbrains-mono-fonts
    fira-code-fonts

    https://release.axocdn.com/linux/gitkraken-amd64.rpm # GitKraken    
    
    nodejs

    sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
    sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
    sudo dnf install code -y -q
)
toolboxParaJogar=(
    winehq-staging
    javafx
    openjfx
)

flatpak remotes

flatpak install flathub org.mozilla.firefox org.gnome.Extensions org.gnome.Epiphany org.gnome.Boxes md.obsidian.Obsidian org.libreoffice.LibreOffice org.gimp.GIMP org.freedesktop.Piper com.obsproject.Studio com.github.tchx84.Flatseal com.spotify.Client com.discordapp.Discord com.valvesoftware.Steam org.desmume.DeSmuME -y
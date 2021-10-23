sudo ostree admin pin 0
rpm-ostree upgrade

sudo hostnamectl set-hostname silverblue

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo

sudo rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# rebooteie

flatpak remove --all

rpm-ostree install ffmpeg gstreamer1-plugin-openh264 fuse-exfat zsh git vim-enhanced gnome-tweaks dconf-editor neofetch java-latest-openjdk

rpm-ostree override remove firefox yelp gnome-tour

## ver como colocar no os-tree: sudo dnf copr enable jstaf/onedriver + sudo dnf install onedriver

# rebooteie

## coisas pra toolbox para programar

- fonts: mozilla-fira-sans-fonts, mozilla-fira-mono-fonts, fira-code-fonts, jetbrains-mono-fonts
- GitKraken: https://release.axocdn.com/linux/gitkraken-amd64.rpm
- runtimes: nodejs
- vscode:
  sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
  sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
  sudo dnf install code -y -q

## nao sei o que faz:

- org.gnome.NautilusPreviewer

flatpak install flathub md.obsidian.Obsidian org.mozilla.firefox org.gnome.Contacts org.gnome.Calculator org.gnome.gedit org.gnome.baobab org.gnome.eog org.gnome.Shotwell org.gnome.Evince org.flameshot.Flameshot org.gnome.Logs org.gnome.FileRoller org.gnome.font-viewer org.gnome.Calendar org.gnome.Extensions org.gnome.Totem org.gnome.Epiphany org.gnome.SoundRecorder org.libreoffice.LibreOffice org.gimp.GIMP org.freedesktop.Piper org.gabmus.hydrapaper nl.hjdskes.gcolor3 com.hamrick.VueScan com.github.liferooter.textpieces com.belmoussaoui.Obfuscate com.obsproject.Studio com.github.tchx84.Flatseal com.spotify.Client com.discordapp.Discord cc.arduino.arduinoide org.gnome.Boxes org.desmume.DeSmuME com.valvesoftware.Steam com.dropbox.Client -y

flatpak install flathub-beta net.lutris.Lutris com.google.Chrome -y

flatpak install fedora org.fedoraproject.Platform -y

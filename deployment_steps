# Clean install of Arch with Doas instead of Sudo, NetworkManager, Vim and Git.

doas pacman -S base-devel --ignore sudo

# Done some changes in /etc/pacman.conf to enable 32 bit support with multilib to install video drivers, and some Misc stuff.

doas pacman -S mesa lib32-mesa xf86-video-amdgpu vulkan-radeon lib32-vulkan-radeon libva-mesa-driver lib32-libva-mesa-driver mesa-vdpau lib32-mesa-vdpau

git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/st

doas mv dwm/ /usr/src/
doas mv dmenu/ /usr/src/
doas mv st/ /usr/src/

doas pacman -S xorg-server xorg-xinit libx11 libxinerama libxft webkit2gtk # DWM dependencies.

doas make clean install # All three folders.

echo 'exec dwm' >> .xinitrc

mkdir ~/Documents
mkdir ~/Documents/Images
mkdir ~/Documents/Images/Screenshots
mkdir ~/Documents/Images/Wallpapers

mkdir ~/Downloads
mkdir ~/Projects
mkdir ~/Scripts

# Done vim setup, instructions in another file.

# Done setup for all below programs minus transmission and neofetch.

doas pacman -S firefox htop ranger mpv zathura transmission-gtk neofetch

# Dependencies for xinitrc

doas pacman -S unclutter feh numlockx

# Made setup of xinitrc

# Dependencies for dwm-bar and dwm
# For some features and commands, DWM also requires some scripts that must be in ~/Scripts

doas pacman -S xorg-xsetroot pulseaudio pamixer acpilight ttf-hack scrot xclip

doas cp -r Projects/dotfiles/dwm-bar/ /usr/src/

# dwm-bar is started from xinitrc, already configured.

# Setup vim for root and pointing to user's undodir.

# Copied htop, mpv, ranger and zathura config files to /root/.config.

# Patches applied for dwm and st.

# Grub setup.

# Added startx to .bash_profile to start dwm on login.

# DWM, DMENU and ST configured.

feh --no-fehbg --bg-fill ~/Documents/Images/Wallpapers/grey_bird.jpg

# bashrc configured for user and root
# added .bash_profile to root run .bashrc

# generated sshkey enable sshagent in xinitrc

# only user will be able to access .ssh folder, security measure
chmod 700 .ssh

# to store appimages such as onlyoffice
mkdir Applications

# dependency lib to run appimages
doas pacman -S fuse2

# add Applications folder to PATH environment variable through bash_profile so appimages can be run via dmenu

# as root to remove the webcam driver
echo "blacklist uvcvideo" > /etc/modprobe.d/disable_webcam.conf

# install yay
cd /opt
doas git clone https://aur.archlinux.org/yay.git
doas chown -R user:users ./yay
cd yay
makepkg -si

# change GTK theme in /usr/share/gtk-3.0/settings.ini
# add gtk themes in /usr/share/themes
# add gtk icons in /usr/share/icons


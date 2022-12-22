#!/data/data/com.termux/files/usr/bin/bash

# download and run this script by enetering this in your terminal (without hashtag):
# curl -OL https://raw.githubusercontent.com/1ray-1/termux-setup/main/termux-setup.sh && chmod +x termux-setup.sh && bash termux-setup.sh


# update & upgrade
pkg update
pkg upgrade -y

# configure storage
termux-setup-storage

# INSTALL SOME PROGRAMS
for each_pac in "wget" "net-tools" "mlocate" "python3" "clang" "zip" "unzip" "tree" "git" "cmatrix" "htop" "ruby" "vim" "neofetch" "curl"; do
    pkg install $each_pac -y
done

# if your device is rooted, you can install package 'tsu' to be able to use 'sudo' command, for this uncomment next command:
#pkg install tsu

# CONFIGURE SOME PROGRAMS

# confifure vim
# install monokai color scheme 
git clone https://github.com/sickill/vim-monokai 
mkdir -p ~/.vim/colors
mv vim-monokai/colors/monokai.vim ~/.vim/colors && rm -rf vim-monokai/

# configure vim config file (you can edit it, by the way)
cat > ~/.vimrc << EOF
syntax enable
colorscheme monokai
" enable mouse support
set mouse=a
" set black background
hi Normal ctermbg=16 guibg=#000000
hi LineNr ctermbg=16 guibg=#000000
set cursorline
hi cursorline gui=underline cterm=underline ctermbg=NONE
set smartindent
set nowrap
set number
set tabstop=4
set expandtab
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap " ""<left>
EOF

# install some python modules
for each in "setuptools" "requests" "ipython" "cryptography" "faker"; do
    pip3 install $each
done

# Install sms b0mb3r (https://github.com/Denishnc/b0mb3r)
cd ~
git clone https://github.com/Denishnc/b0mb3r

# Install ip tracer (https://github.com/rajkumardusad/IP-Tracer.git)
cd ~
git clone https://github.com/rajkumardusad/IP-Tracer.git
cd IP-Tracer
chmod +x install
./install

# MORE
# remove Termux welcome text
rm /data/data/com.termux/files/usr/etc/motd


# FINISH
clear
echo "Termux setup complete!"
exit 0

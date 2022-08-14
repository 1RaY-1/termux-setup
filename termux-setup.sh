#!/data/data/com.termux/files/usr/bin/bash

# My Termux setup

# update, upgrade
pkg update && pkg upgrade -y

# configure storage
termux-setup-storage

# INSTALL SOME PROGRAMS
for each_pac in "wget" "net-tools" "mlocate" "python3" "clang" "zip" "unzip" "tree" "git" "cmatrix" "htop" "grep" "vim" "neofetch"; do
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

# upgrade pip and install some modules
pip install --upgrade pip
pip install setuptools
pip install requests

# MORE
# remove Termux welcome text
rm /data/data/com.termux/files/usr/etc/motd


clear
echo "Termux setup complete!"
exit 0

#!/data/data/com.termux/files/usr/bin/bash

# My Termux setup

# update, upgrade
pkg update && pkg upgrade -y

# configure storage
termux-setup-storage

# INSTALL SOME PROGRAMS
yes | pkg install \
	wget \
	net-tools \
	mlocate \
	python3 \
	python3-dev \
	clang \
	zip \
	unzip \
	tree \
	git \
	cmatrix \
	htop \
	top \
	grep \
	nano \
	vim \
	neofetch

# if your device is rooted, you can install package 'tsu' to be able to use 'sudo' command, for this uncomment next command:
#pkg install tsu

# CONFIGURE SOME PROGRAMS

# create some bash aliases

cat >> ~/.bashrc << EOF
# SOME BASH ALIASES, ADDED BY termux-setup.sh
# list all files
alias la="ls -a"
# get your ip
alias myip='curl ipinfo.io/ip'
alias ckear='clear'
# sort files by size
alias lt='ls --human-readable --size -1 -S --classify'
# count files
alias count='find . -type f | wc -l'
EOF


# confifure vim
# install monokai color scheme 
git clone https://github.com/sickill/vim-monokai 

# if directory where we can have new vim color schemes does not exist, then program will create it
if [[ ! -d ~/.vim/ ]]; then
	mkdir ~/.vim/
	mkdir ~/.vim/colors/
elif [[ -d ~/.vim/ ]]; then
	if [[ ! -d ~/.vim/colors/ ]]; then
		mkdir ~/.vim/colors/
	fi
fi
# move vim monokai color scheme to it's destination directory
cd colors && mv monokai.vim ~/.vim/colors/ && cd .. && rm -rf vim-monokai/

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

# install Tool-X
git clone https://github.com/rajkumardusad/Tool-X.git
cd Tool-X
chmod +x install
./install

echo "Termux setup complete!"
exit 0

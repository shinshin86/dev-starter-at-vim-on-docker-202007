########################################################
# Setup script
########################################################
# clean & update
apt autoclean
apt update

# Install curl
apt install -y curl

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# Install go
apt install -y software-properties-common
apt update
add-apt-repository ppa:longsleep/golang-backports
apt update
apt install -y golang-go

source ~/.bashrc

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

# pyenv install
apt install -y build-essential libffi-dev libssl-dev zlib1g-dev liblzma-dev libbz2-dev libreadline-dev libsqlite3-dev
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

# Install rbenv
apt install -y autoconf bison libyaml-dev libreadline6-dev libncurses5-dev libgdbm5 libgdbm-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
~/.rbenv/bin/rbenv init
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

source ~/.bashrc

# dev-starter-at-vim-on-docker-202007

dev starter at vim on docker created 2020/07



## Usage

### Running docker

```bash
docker build -t dev-starter-vim-202007 .
docker run -it --rm --name dev-starter-vim-202007-01 dev-starter-vim-202007 /bin/bash
```



### Running setup script

```bash
# copy setup.sh -> ~/
bash ~/setup.sh
```



### Setup vimrc

```bash
# copy .vimrc -> ~/
# And start vim
vim
```



### PlugInstall at vim

```vim
# on vim
:PlugInstall
```


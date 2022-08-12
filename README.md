# dotfiles

## Sync dotfiles with a bare git repo

https://www.atlassian.com/git/tutorials/dotfiles

Starting from scratch

```sh
git init --bare $HOME/.dotfiles

# configure alias
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

dotfiles config --local status.showUntrackedFiles no
```

Install to an existing system

```sh
# configure alias
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

git clone --bare git@github.com:xevgeny/dotfiles.git $HOME/.dotfiles

dotfiles config --local status.showUntrackedFiles no

# resolve all conflicts during checkout
dotfiles checkout
```

## Minimal setup

```sh
sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt update
sudo apt install -y htop tmux tig fish
sudo chsh -s /usr/bin/fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install https://github.com/jhillyerd/plugin-git
```


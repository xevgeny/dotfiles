# dotfiles

vim, tmux and all the goodies

## Sync dotfiles with a bare git repo

- https://www.atlassian.com/git/tutorials/dotfiles

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

git clone --bare <git-repo-url> $HOME/.dotfiles
```


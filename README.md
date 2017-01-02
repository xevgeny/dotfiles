# dotfiles

## Emacs

Links:
- [Basic emacs](http://www.braveclojure.com/basic-emacs/)
- [Extending emacs](http://y.tsutsumi.io/emacs-from-scratch-part-1-extending-emacs-basics.html)
- [Package managment](http://y.tsutsumi.io/emacs-from-scratch-part-2-package-management.html)

Packages:
- [helm](https://github.com/emacs-helm/helm) 
- [helm-ag](https://github.com/syohex/emacs-helm-ag)
- [helm-projectile](https://github.com/bbatsov/helm-projectile)
- [paredit]()
- ...

Notes:
- Install helm directly from git to avoid wierd errors
- Install [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) for searching with helm-ag

Basic kbds:

Kbd | Command
--- | ---
`<M-x>` | Helm menu
`<C-c s>` | Procfile switch project
`<C-c o>` | Projectile open file
`<C-c b>` | Buffers list
`<C-c r>` | Recent files
`<C-c f>` | Full text search in project
`<C-s>` | Search in file

ℹ️ All custom kdbs can be found [here](../master/.emacs.d/custom/settings.el)

#### Hacks:

Format XML:
```
M-x nxml-mode
M-x replace-regexp RET > *< RET >C-q C-j< RET 
C-M-\ to indent
```

Apply settings immediately from buffer: `M-x eval-buffer`

## Vim

Links:
- [Learn Vim Progressively](http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/)
- [Cheat Sheet](http://michael.peopleofhonoronly.com/vim/)

Packages:
- [vim-plug](https://github.com/junegunn/vim-plug)
- ...

## Tmux
Plugins:
```
git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux-plugins/tmux-resurrect
git clone https://github.com/tmux-plugins/tmux-continuum ~/.tmux-plugins/tmux-continuum
```
## Zsh
Zsh/oh-my-zsh configs

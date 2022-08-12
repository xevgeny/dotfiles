set -x LC_ALL en_US.UTF-8
set -x TERM xterm-256color

alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# disable timestamp on the right
function fish_right_prompt
  #intentionally left blank
end

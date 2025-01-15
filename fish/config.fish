if status is-interactive
  #Commands to run in interactive sessions can go here

  # UWSM 
  if uwsm check may-start > /dev/null 2>&1; and  uwsm select
    exec systemd-cat -t uwsm_start uwsm start default
  end
end

fish_vi_key_bindings
set -x EDITOR nvim
set -x TERM xterm-256color
pyenv init - | source

abbr --add dtrx "aunpack"
abbr --add egrep "grep -E"
abbr --add sl "ls"
abbr --add scrot "hyprshot -m region"
abbr --add psh "eval (poetry env activate)"
abbr --add poac "eval (poetry env activate)" # type "deactivate" to deactivate
abbr --add pingg "ping -c3 www.google.com"
abbr --add fzim "lvim (fzf)"

# dune
source $HOME/.local/share/dune/env/env.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings
set -x EDITOR nvim
set -x TERM xterm-256color
pyenv init - | source

abbr --add dtrx "aunpack"
abbr --add egrep "grep -E"
abbr --add sl "ls"

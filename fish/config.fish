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
abbr --add scrot "hyprshot -m region"
abbr --add psh "poetry shell"
abbr --add pingg "ping -c3 www.google.com"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings
set -x EDITOR nvim
set -x TERM xterm-256color
pyenv init - | source

abbr --add wgup "sudo wg-quick up"
abbr --add wgdown "sudo wg-quick down"
abbr --add wwgup "sudo wg-quick up ekd-vpn1"
abbr --add wwgdown "sudo wg-quick down ekd-vpn1"
abbr --add www0 "ssh afichtner@www0.leads-middleware.de" 
abbr --add www1 "ssh afichtner@www1.leads-middleware.de" 
abbr --add www2 "ssh afichtner@www2.leads-middleware.de" 
abbr --add www3 "ssh afichtner@www3.leads-middleware.de" 

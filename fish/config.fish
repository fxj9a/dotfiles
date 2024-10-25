if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings
set -x EDITOR nvim
set -x TERM xterm-256color
pyenv init - | source

abbr --add wgup "sudo wg-quick up"
abbr --add wgdown "sudo wg-quick down"
abbr --add wwgup "sudo wg-quick up ***REMOVED***-vpn1"
abbr --add wwgdown "sudo wg-quick down ***REMOVED***-vpn1"
abbr --add www0 "ssh ***REMOVED***@www0.***REMOVED***.de" 
abbr --add www1 "ssh ***REMOVED***@www1.***REMOVED***.de" 
abbr --add www2 "ssh ***REMOVED***@www2.***REMOVED***.de" 
abbr --add www3 "ssh ***REMOVED***@www3.***REMOVED***.de" 
abbr --add dtrx "aunpack"
abbr --add egrep "grep -E"

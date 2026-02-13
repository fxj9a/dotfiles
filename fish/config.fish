if status is-interactive && not set -q CONTAINER_ID
    #Commands to run in interactive sessions can go here

    # UWSM 
    if uwsm check may-start >/dev/null 2>&1; and uwsm select
        exec systemd-cat -t uwsm_start uwsm start default
    end
end

fish_vi_key_bindings

#abbr --add rm rip
abbr --add burndisk "caligula burn"
abbr --add dtrx aunpack
abbr --add egrep "grep -E"
abbr --add fzim "nvim (fzf)"
abbr --add gpushf "git push --force-with-lease"
abbr --add hyprconfig "nvim ~/.config/hypr/hyprland.conf"
abbr --add pingg "ping -c3 www.google.com"
abbr --add pipx "uv tool"
abbr --add psh "eval (poetry env activate)"
abbr --add rmi "rm -rfi"
abbr --add rmrff "rm -rf"
abbr --add scrot "hyprshot -m region"
abbr --add showip "curl -s https://icanhazip.com"
abbr --add sl ls
abbr --add tea "tee -a"
abbr --add tldr "cht.sh"
abbr --add uvactivate "source .venv/bin/activate.fish"

# krew / kubectl
set -q KREW_ROOT; and set -gx PATH $PATH $KREW_ROOT/.krew/bin; or set -gx PATH $PATH $HOME/.krew/bin

# pdfalyzer
set -gx PDFPARSER_OPTIONS "-O"

mise activate fish | source
#starship init fish | source

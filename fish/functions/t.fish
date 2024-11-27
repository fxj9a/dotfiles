function t --wraps=tmux --description 'Alias t=tmux with smart attach-or-new behavior'
  if test (count $argv) -eq 0
    tmux a || tmux
  else
    tmux $argv
  end
end

function z --wraps=lvim --description 'lvim with fzf'
  if test (count $argv) -eq 0
    lvim (fzf)
  else
    lvim (fzf --query $argv)
  end
        
end

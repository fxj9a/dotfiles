function z --wraps=lvim --description 'lvim with fzf'
  if test (count $argv) -eq 0
    nvim (fzf)
  else
    nvim (fzf --query $argv)
  end
        
end

fish_vi_key_bindings
set EDITOR nvim
alias vim nvim
function wtr
  if [ -n $argv ]
    set query "wttr.in/~$argv?0"
  else
    set query "wttr.in/?0"
  end
  curl $query
end

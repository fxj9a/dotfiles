fish_vi_key_bindings
set EDITOR nvim
alias vim nvim
alias k kaput
function wtr
  if [ -n $argv ]
    set query "wttr.in/~$argv?0"
  else
    set query "wttr.in/?0"
  end
  curl $query
end

#function k
#  echo "Ctrl+D to exit"
# while read -l k_mycommand -P "kaput> "
#  	kaput $k_mycommand
#  end
#end

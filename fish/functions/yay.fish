function yay --wraps=pikaur --description 'restart after yay if necessary'
  if test (count $argv) -eq 0
    pikaur -Syu && restartmaybe
  else
    pikaur $argv
  end
end

function restartmaybe
  set -f uname (uname -r)
  pacman -Qql linux | grep -q $uname
  
  set -f mystatus $status;


  if test $mystatus -eq 0
    echo "Kernel $uname is up to date -- no restart required."
  else
    set -f updated pacman -Qql linux | tail -1 | awk '{print $4}'
    read -P "Kernel was updated to $updated.\nCurrently running: $uname\n Restart? [y/n] " restartyes
    if test "$restartyes" = "y"
      restart
    else
      echo "OK. Please restart later."
    end
  end
  
end

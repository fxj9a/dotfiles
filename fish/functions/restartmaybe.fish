function restartmaybe
  set -f kernelpkgname "linux-cachyos" # change this to the installation package for the kernel you're running
  set -f uname (uname -r)
  pacman -Qql $kernelpkgname | grep -q $uname
  
  set -f mystatus $status;


  if test $mystatus -eq 0
    echo ""
    echo "Kernel $uname is up to date -- no restart required."
  else
    set -f updated (pacman -Qql $kernelpkgname | tail -1 | awk -F/ '{print $5}')
    echo
    echo "Kernel was updated to: $updated"
    echo "Currently running:     $uname"
    read -P "Restart now? [Y/n] " restartyes
    set restartyes (string lower $restartyes)
    if test "$restartyes" = "y" -o -z "$restartyes"
      reboot
    else
      echo "OK. Please restart later."
    end
  end
  
end

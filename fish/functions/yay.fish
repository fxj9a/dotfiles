function yay --wraps=pikaur --description 'improve ux with pikaur (like yay)'
  if test -z "$argv"
    echo "[INFO] pikaur -Syu"
    pikaur -Syu
  else
    echo "[INFO]" pikaur $argv
    pikaur $argv
  end
end

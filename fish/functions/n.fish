function n --wraps=lvim --description 'create/read daily note of today or whatever i say'
  if test -z "$argv"
    sh -c "cd ~/scratch/notes && lvim ~/scratch/notes/$(date -I).md"
  else
    lvim ~/scratch/notes/(date -I --date="$argv").md
  end
end

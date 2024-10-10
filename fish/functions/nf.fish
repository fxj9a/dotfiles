function nf --wraps=lvim --description 'create daily note of last friday'
  sh -c "cd ~/scratch/notes && lvim ~/scratch/notes/$(date --date='last friday' -I).md $argv"
        
end


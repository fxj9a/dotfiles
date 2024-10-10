function nt --wraps=lvim --description 'create daily note of tomorrow'
  sh -c "cd ~/scratch/notes && lvim ~/scratch/notes/$(date --date='tomorrow' -I).md $argv"
        
end


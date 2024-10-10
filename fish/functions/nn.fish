function nn --wraps=lvim --description 'create/read daily note of yesterday'
  sh -c "cd ~/scratch/notes/ && lvim ~/scratch/notes/$(date --date='yesterday' -I).md $argv"
        
end


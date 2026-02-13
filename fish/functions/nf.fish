function nf --wraps=nvim --description 'create daily note of last friday'
    sh -c "cd ~/scratch/notes && nvim ~/scratch/notes/$(date --date='last friday' -I).md $argv"

end

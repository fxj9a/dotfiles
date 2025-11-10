function nt --wraps=nvim --description 'create daily note of tomorrow'
    sh -c "cd ~/scratch/notes && NVIM_APPNAME=nvim-minimax nvim ~/scratch/notes/$(date --date='tomorrow' -I).md $argv"

end

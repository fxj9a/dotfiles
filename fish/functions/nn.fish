function nn --wraps=nvim --description 'create/read daily note of yesterday'

    sh -c "cd ~/scratch/notes/ && NVIM_APPNAME=nvim-minimax nvim ~/scratch/notes/$(date --date='yesterday' -I).md $argv"

end

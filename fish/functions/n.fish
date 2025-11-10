function n --wraps=nvim --description 'create/read daily note of today or whenever I say'
    if test -z "$argv"
        sh -c "cd ~/scratch/notes && NVIM_APPNAME=nvim-minimax nvim ~/scratch/notes/$(date -I).md"
    else
        set mydate (date -I --date="$argv")
        sh -c "cd ~/scratch/notes && NVIM_APPNAME=nvim-minimax nvim ~/scratch/notes/$mydate.md"
    end
end

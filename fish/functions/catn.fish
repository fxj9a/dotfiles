function catn --wraps=catn --description 'read daily note of today or whenever I say'
    if test -z "$argv"
        sh -c "bat ~/scratch/notes/$(date -I).md"
    else
        set mydate (date -I --date="$argv")
        sh -c "cd ~/scratch/notes && nvim ~/scratch/notes/$mydate.md"
    end
end

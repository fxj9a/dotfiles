function gs --wraps=git\ -c\ color.status=always\ status\ -sb\ \|\ awk\ \'NR\>1\' --description alias\ gs=git\ -c\ color.status=always\ status\ -sb\ \|\ awk\ \'NR\>1\'
  git -c color.status=always status -sb | awk 'NR>1' $argv
        
end

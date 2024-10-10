function kall --wraps='kubectl get (kubectl api-resources --verbs=list --namespaced -o name | paste -sd ,)' --description 'alias kall kubectl get (kubectl api-resources --verbs=list --namespaced -o name | paste -sd ,)'
  kubectl get (kubectl api-resources --verbs=list --namespaced -o name | paste -sd ,) $argv
        
end

function ksecret --wraps=kubectl --description 'interactive secret from k8s decoder'
  kubectl config view --minify -o jsonpath='{..namespace}' | read  currentns
  kubectl get ns --no-headers -o custom-columns=":metadata.name" | fzf --prompt "Namespace: " --query="$currentns" --no-sort  | read namespace 

  kubectl get secrets -n $namespace --no-headers -o custom-columns=":metadata.name" | fzf --prompt "Secret Name: " | read secretname

  kubectl get secret $secretname -n $namespace -o json | jq -r '.data | keys[]' | fzf -1 --prompt "Secret Key: " | read secretkey

  kubectl get secret $secretname -n $namespace -o jsonpath="{.data.$secretkey}" | base64 -d
        
end

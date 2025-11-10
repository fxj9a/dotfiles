function ksecret --description 'interactive secret from k8s decoder'
    kubectl config view --minify -o jsonpath='{..namespace}' | read currentns
    kubectl get ns --no-headers -o custom-columns=":metadata.name" | fzf --prompt "Namespace: " --query="$currentns" --no-sort | read namespace

    kubectl get secrets -n $namespace --no-headers -o custom-columns=":metadata.name" | fzf -0 --prompt "Secret Name: " | read secretname
    if test -z "$secretname"
        echo "No secret for namespace $namespace"
        return 1
    end

    kubectl get secret $secretname -n $namespace -o json | jq '.data | keys[]' | fzf -0 -1 --prompt "Secret Key: " | read secretkey
    if test -z "$secretkey"
        echo "No secret key for secret $secretname"
        return 2
    end

    kubectl get secret $secretname -n $namespace -o json | jq -r ".data.$secretkey" | base64 -d

end

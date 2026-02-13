function podmanlogin --description 'Get Token for azure $DOCKER_REGISTRY and login'
  set TOKEN (az acr login --name $AZURE_REGISTRY_NAME --expose-token --output tsv --query accessToken)
  podman login $DOCKER_REGISTRY -u 00000000-0000-0000-0000-000000000000 -p $TOKEN
end


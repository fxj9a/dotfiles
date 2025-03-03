function podmanlogin --description 'Get Token for azure ekdregistry and login'
  set TOKEN (az acr login --name ekdregistry --expose-token --output tsv --query accessToken)
  podman login ekdregistry.azurecr.io -u 00000000-0000-0000-0000-000000000000 -p $TOKEN
end


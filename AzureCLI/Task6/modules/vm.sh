az vm create \
  --resource-group MyResourceGroup \
  --name MyUbuntuVM \
  --image UbuntuLTS \
  --size Standard_B1s \
  --admin-username azureuser \
  --authentication-type password \
  --admin-password MySecurePassword123! \
  --nics MyNIC

#az vm show --resource-group MyResourceGroup --name MyUbuntuVM --show-details --query publicIps --output tsv

#az vm open-port --resource-group MyResourceGroup --name MyUbuntuVM --port 80
#az vm open-port --resource-group MyResourceGroup --name MyUbuntuVM --port 443

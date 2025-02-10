# Create Storage Account
az storage account create \
    --resource-group $RESOURCE_GROUP_NAME \
    --name $STORAGE_ACCOUNT_NAME \
    --location $LOCATION \
    --sku $SKU

# Verify creation
az network vnet show --resource-group $RESOURCE_GROUP_NAME --name $VNET_NAME
az storage account show --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME

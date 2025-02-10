# Create Virtual Machine
az vm create \
    --resource-group $RESOURCE_GROUP_NAME \
    --name $VM_NAME \
    --image $IMAGE \
    --size $SIZE \
    --admin-username $ADMIN_USERNAME \
    --admin-password $ADMIN_PASSWORD \
    --vnet-name $VNET_NAME \
    --subnet $SUBNET_NAME \
    --public-ip-sku Standard

# Verify creation
az network vnet show --resource-group $RESOURCE_GROUP_NAME --name $VNET_NAME
az storage account show --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME
az vm show --resource-group $RESOURCE_GROUP_NAME --name $VM_NAME --show-details

#!/bin/bash

# Variables
RESOURCE_GROUP_NAME="MyResourceGroup"
LOCATION="eastus"
VNET_NAME="MyVNet"
SUBNET_NAME="MySubnet"
ADDRESS_PREFIX="10.0.0.0/16"
SUBNET_PREFIX="10.0.0.0/24"
STORAGE_ACCOUNT_NAME="mystorageaccount$(date +%s)"
SKU="Standard_LRS"
VM_NAME="WebVM"
IMAGE="UbuntuLTS"
SIZE="Standard_B1s"
ADMIN_USERNAME="azureuser"
ADMIN_PASSWORD="P@ssw0rd1234"
NSG_NAME="WebVM-NSG"

# Login to Azure (if not already logged in)
az login

# Create Resource Group
az group create --name $RESOURCE_GROUP_NAME --location $LOCATION

# Create Virtual Network
az network vnet create \
    --resource-group $RESOURCE_GROUP_NAME \
    --name $VNET_NAME \
    --address-prefix $ADDRESS_PREFIX \
    --location $LOCATION

# Create Subnet
az network vnet subnet create \
    --resource-group $RESOURCE_GROUP_NAME \
    --vnet-name $VNET_NAME \
    --name $SUBNET_NAME \
    --address-prefix $SUBNET_PREFIX

# Create Storage Account
az storage account create \
    --resource-group $RESOURCE_GROUP_NAME \
    --name $STORAGE_ACCOUNT_NAME \
    --location $LOCATION \
    --sku $SKU

# Create Virtual Machine
az vm create \
    --resource-group $RESOURCE_GROUP_NAME \
    --name $VM_NAME \
    --image $IMAGE \
    --size $SIZE \
    --admin-username $ADMIN_USERNAME \
    --admin-password $ADMIN_PASSWORD \
    --vnet-name $VNET_NAME \
    --subnet $SUBNET_NAME \
    --public-ip-sku Standard

# Open port 80 for web traffic
az network nsg rule create \
    --resource-group $RESOURCE_GROUP_NAME \
    --nsg-name $NSG_NAME \
    --name AllowHTTP \
    --priority 1000 \
    --direction Inbound \
    --access Allow \
    --protocol Tcp \
    --destination-port-ranges 80

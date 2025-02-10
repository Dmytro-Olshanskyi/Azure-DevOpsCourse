#!/bin/bash

# Variables
RESOURCE_GROUP_NAME=${RESOURCE_GROUP_NAME}
LOCATION=${LOCATION}
VNET_NAME=${VNET_NAME}
SUBNET_NAME=${SUBNET_NAME}
ADDRESS_PREFIX=${ADDRESS_PREFIX}
SUBNET_PREFIX=${SUBNET_PREFIX}

create_network(){

echo "LOG: Create network ${VNET_NAME}"    
# Create Virtual Network
    az network vnet create \
        --resource-group ${RESOURCE_GROUP_NAME} \
        --name ${VNET_NAME} \
        --address-prefix ${ADDRESS_PREFIX} \
        --location ${LOCATION}
}

create_subnet(){
# Create Subnet
az network vnet subnet create \
    --resource-group ${RESOURCE_GROUP_NAME} \
    --vnet-name ${VNET_NAME} \
    --name ${SUBNET_NAME} \
    --address-prefix ${SUBNET_PREFIX}

# Verify creation
az network vnet show --resource-group ${RESOURCE_GROUP_NAME} --name ${VNET_NAME}
}

create_network_security_group(){
echo "Create NSG with SSH open"

az network nsg create \
  --resource-group MyResourceGroup \
  --name MyNSG

az network nsg rule create \
  --resource-group MyResourceGroup \
  --nsg-name MyNSG \
  --name AllowSSH \
  --protocol Tcp \
  --direction Inbound \
  --priority 1000 \
  --source-address-prefixes '*' \
  --source-port-ranges '*' \
  --destination-port-ranges 22 \
  --access Allow

}

create_nic(){
echo "LOG: Create NIC"
az network nic create \
  --resource-group MyResourceGroup \
  --name MyNIC \
  --vnet-name MyVNet \
  --subnet MySubnet \
  --network-security-group MyNSG
}

delete_netwurk(){
    echo "LOG: Delete network ${VNET_NAME}"
    az network vnet delete --resource-group ${RESOURCE_GROUP_NAME} --name ${VNET_NAME}
}
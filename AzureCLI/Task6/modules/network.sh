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

delete_netwurk(){
    echo "LOG: Delete network ${VNET_NAME}"
    az network vnet delete --resource-group ${RESOURCE_GROUP_NAME} --name ${VNET_NAME}
}
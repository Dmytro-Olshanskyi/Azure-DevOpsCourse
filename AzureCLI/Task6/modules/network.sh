#!/bin/bash

# Variables
RESOURCE_GROUP_NAME="MyResourceGroup"
LOCATION="eastus"
VNET_NAME="MyVNet"
SUBNET_NAME="MySubnet"
ADDRESS_PREFIX="10.0.0.0/16"
SUBNET_PREFIX="10.0.0.0/24"

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

# Verify creation
az network vnet show --resource-group $RESOURCE_GROUP_NAME --name $VNET_NAME

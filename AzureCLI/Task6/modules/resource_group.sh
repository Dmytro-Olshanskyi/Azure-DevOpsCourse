#!/bin/bash

# Variables
RESOURCE_GROUP_NAME="MyResourceGroup"
LOCATION="eastus"

# Login to Azure (if not already logged in)
az login

# Create Resource Group
az group create --name $RESOURCE_GROUP_NAME --location $LOCATION

# Verify creation
az group show --name $RESOURCE_GROUP_NAME
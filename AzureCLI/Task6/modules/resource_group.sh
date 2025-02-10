#!/bin/bash

# Variables
RESOURCE_GROUP_NAME=${RESOURCE_GROUP_NAME}
LOCATION=${LOCATION}

create_resource_group(){
# Create Resource Group

    echo "LOG: Create Resource Group ${RESOURCE_GROUP_NAME}"
    az group create --name $RESOURCE_GROUP_NAME --location $LOCATION

# Verify creation
    az group show --name $RESOURCE_GROUP_NAME -o table
}

delete_resource_group(){
    echo "LOG: Delete $RESOURCE_GROUP_NAME"
    az group delete --name $RESOURCE_GROUP_NAME
}
#!/bin/bash

# Variables
RESOURCE_GROUP_NAME=${RESOURCE_GROUP_NAME}
LOCATION=${LOCATION}

create_resource_group(){
# Create Resource Group
    az group create --name $RESOURCE_GROUP_NAME --location $LOCATION

# Verify creation
    az group show --name $RESOURCE_GROUP_NAME
}
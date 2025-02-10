#!/bin/bash

# Variables
LOCATION=${LOCATION}

STORAGE_ACCOUNT_NAME=${STORAGE_ACCOUNT_NAME}
SKU=${SKU}
KIND=${KIND}

BLOB_CONTAINER_NAME=${BLOB_CONTAINER_NAME}


create_storage_account(){
    echo "LOG: Create storage account ${STORAGE_ACCOUNT_NAME}"
#     Create Storage Account
    az storage account create \
        --resource-group $RESOURCE_GROUP_NAME \
        --name $STORAGE_ACCOUNT_NAME \
        --location $LOCATION \
        --sku ${SKU} \
        --kind ${KIND}

# Verify creation
    az storage account show --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME
}

create_blob(){

    echo "LOG: BLOB Storage Container ${BLOB_CONTAINER_NAME} "
    az storage container create \
      --name ${BLOB_CONTAINER_NAME} \
      --account-name ${STORAGE_ACCOUNT_NAME} \
      --public-access container
}

delete_storage_account()(
    echo "LOG: DELETE storage account ${STORAGE_ACCOUNT_NAME}"
    az storage account delete --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --yes
)
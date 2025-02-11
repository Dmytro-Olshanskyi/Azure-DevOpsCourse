#!/bin/bash

# Variables

RESOURCE_GROUP_NAME=${RESOURCE_GROUP_NAME}
LOCATION=${LOCATION}
VM_NAME=${VM_NAME}
VM_IMAGE=${VM_IMAGE}
VM_SIZE=${VM_SIZE}
VM_ADMIN_USER=${VM_ADMIN_USER}
VM_AUTH_TYPE=${VM_AUTH_TYPE}
VM_ADMIN_PASSWORD=${VM_ADMIN_PASSWORD}
VM_NIC=${VM_NIC}

CLOUD_INIT_SCIPT=${CLOUD_INIT_SCIPT}


create_vm(){

az vm create \
  --resource-group ${RESOURCE_GROUP_NAME} \
  --name ${VM_NAME} \
  --image ${VM_IMAGE} \
  --size ${VM_SIZE} \
  --admin-username ${VM_ADMIN_USER} \
  --authentication-type  ${VM_AUTH_TYPE}\
  --admin-password ${VM_ADMIN_PASSWORD} \
  --nics ${VM_NIC}
  --custom-data ${CLOUD_INIT_SCIPT}
}

delete_vm(){

  # Delete the VM
echo "Deleting VM: $VM_NAME in resource group: $RESOURCE_GROUP_NAME..."
az vm delete --resource-group "$RESOURCE_GROUP_NAME" --name "$VM_NAME" --yes --no-wait

# Optionally delete related resources
echo "Deleting NIC: $VM_NIC..."
az network nic delete --resource-group "$RESOURCE_GROUP_NAME" --name "$VM_NIC"

echo "Deleting Public IP: $VM_PUBLIC_IP..."
az network public-ip delete --resource-group "$RESOURCE_GROUP_NAME" --name "$VM_PUBLIC_IP"

echo "Deleting OS disk..."
OS_DISK_ID=$(az vm show --resource-group "$RESOURCE_GROUP_NAME" --name "$VM_NAME" --query "storageProfile.osDisk.managedDisk.id" --output tsv)
az disk delete --ids "$OS_DISK_ID" --yes --no-wait

echo "VM and related resources deletion initiated."

}
#az vm show --resource-group MyResourceGroup --name MyUbuntuVM --show-details --query publicIps --output tsv

#az vm open-port --resource-group MyResourceGroup --name MyUbuntuVM --port 80
#az vm open-port --resource-group MyResourceGroup --name MyUbuntuVM --port 443


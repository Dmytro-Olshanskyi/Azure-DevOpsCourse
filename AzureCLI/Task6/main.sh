#! /bin/env bash

source ./vars/dev.env

cat ./vars/dev.env


# source ./modules/network.sh
# source ./modules/storage_account.sh
# source ./modules/vm.sh
# source ./modules/nginx.sh
# source ./modules/diagnostics.sh

# source ./modules/check_web.sh


source ./modules/resource_group.sh
create_resource_group

source ./modules/network.sh
create_network
create_subnet

source ./modules/storage_account.sh
create_storage_account
create_blob



# create_storage_account
# create_blob

# create_vm
# confifure_vm

# install_nginx

# enable_Diagnostics

# check_web



delete_resource_group
delete_netwurk
delete_storage_account






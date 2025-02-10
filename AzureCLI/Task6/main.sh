#! /bin/env bash

source ./var/task6_var.sh

echo ./var/task6_var.sh

source ./module/resource_group.sh
source ./module/network.sh
source ./module/storage_account.sh
source ./module/vm.sh
source ./module/nginx.sh
source ./module/Diagnostics.sh

source ./module/check_web.sh
source ./module/cleanup.sh


create_resource_group()

create_network()
create_subnet()

create_storage_account()
create_blob()

create_vm()
confifure_vm()

install_nginx()

enable_Diagnostics()

check_web()

cleanup()




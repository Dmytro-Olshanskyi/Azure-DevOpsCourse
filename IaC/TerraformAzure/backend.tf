terraform {

  backend "azurerm" {
    resource_group_name  = "dmytroolshanskyi-resources"
    storage_account_name = "dmytroolshanskyitfstate"
    container_name       = "dmytroolshanskyitfstate"
    key                  = "terraform.tfstate"
  }

}

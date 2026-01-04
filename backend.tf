terraform {
  backend "azurerm" {
    resource_group_name  = "boot-rg"
    storage_account_name = "bootstorage55"       # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "boot-container"      # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "newpractice.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
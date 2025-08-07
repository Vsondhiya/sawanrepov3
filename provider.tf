terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
  backend "azurerm" {      
    resource_group_name = "vinod_RG1"                          # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "vinodstorageacc"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "vinodcontainer"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "vinod.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
  features {}
  subscription_id = "bcf304d8-21b8-4358-9c77-54b5dd26f938"
}

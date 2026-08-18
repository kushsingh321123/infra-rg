#switch from Manin to feature branch

terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0.1"
    }
  }
}

provider "azurerm" {
  features {}
}

# resource "azurerm_resource_group" "KDEMO1R" {
#   name     = "KDEMO1R"
#   location = "eastus"

#   tags = {
#     Environment = "Development"
#   }
# }


# resource "azurerm_storage_account" "kdemo1s" {
#   name                = "kdemo1s"
#   resource_group_name = azurerm_resource_group.KDEMO1R.name
#   location            = azurerm_resource_group.KDEMO1R.location

#   account_tier             = "Standard"
#   account_replication_type = "LRS"

#   tags = {
#     Environment = "Development"
#   }
# }

# resource "azurerm_storage_account" "kdemo2s" {
#   name                = "kdemo2s"
#   resource_group_name = azurerm_resource_group.KDEMO1R.name
#   location            = azurerm_resource_group.KDEMO1R.location

#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   depends_on = [
#     azurerm_resource_group.KDEMO1R
#   ]

#   tags = {
#     Environment = "Development"
#   }
# }
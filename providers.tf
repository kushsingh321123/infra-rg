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


resource "azurerm_resource_group" "KDEMO1R" {
  name     = "KDEMO1R"
  location = "eastus"

  tags = {
    Environment = "Development"
  }
}
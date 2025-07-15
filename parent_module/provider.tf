terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "bholurg"
    storage_account_name  = "bholustorage"
    container_name        = "bholucontainer"
    key                   = "bholu.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "def6c89e-a855-4b2a-a2d3-a1bc15337302"
}

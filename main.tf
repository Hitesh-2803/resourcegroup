terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.58.0"
    }
  }
}

provider "azurerm" {
  feature {}
  subscription id = "b14a3699-29f5-4013-af1a-5ee5bcc0c511"
}

resource "azurerm_resource_group" "classicrecap" {
  name     = "classicpipeline"
  location = "West US"
}

resource "azurerm_storage_account" "classicstg" {
  name                     = "classstg1"
  resource_group_name      = "classicpipeline"
  location                 = "West US"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
resource "azurerm_storage_container" "classiccont" {
  name                  = "classiccont1"
  storage_account_id    = azurerm_storage_account.classicstg.id
  container_access_type = "private"
}

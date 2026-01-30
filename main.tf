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

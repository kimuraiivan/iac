terraform {
  required_version = ">=1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

locals {
    custom_data_content  = file("${path.module}/files/winrm.ps1")
}
provider "azurerm" {
  features {}
  skip_provider_registration = true
}
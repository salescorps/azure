#---------------------------------------------------------
# Core of project
#---------------------------------------------------------
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.30.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.30.0"
    }
  }
}

provider "azurerm" {
  features {
    key_vault {
      # available when opted into the 3.0 Beta
      purge_soft_deleted_certificates_on_destroy = true
      purge_soft_deleted_keys_on_destroy         = true
      purge_soft_deleted_secrets_on_destroy      = true
      recover_soft_deleted_certificates          = true
      recover_soft_deleted_secrets               = true
      recover_soft_deleted_keys                  = true
    }
  }
}
data "azurerm_client_config" "current" {}

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.0"
    }

    gcp = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
    
  }
}

provider "aws" {
  region = var.aws_region
  profile = "default"
}

provider "azurerm" {
  features {}
}

provider "azuread" {
  tenant_id = data.azurerm_client_config.current.tenant_id
}

provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
}
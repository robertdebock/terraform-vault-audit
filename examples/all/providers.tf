terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "3.5.0"
    }
  }
}

provider "vault" {
  # Configuration options
}

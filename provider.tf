terraform {
  required_providers {
    lxd = {
      source = "terraform-lxd/lxd"
      version = ">= 2.2.0"
    }
  }
}

provider "lxd" {
  generate_client_certificates = true
  accept_remote_certificate    = true

  remote {
    name     = "lxd-server-1"
    scheme   = "https"
    address  = "127.0.0.1"
    token = "xxxxxx"
    default  = true
  }
}


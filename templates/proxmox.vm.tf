/*
This is a template for using the proxmox/vm module. 
For credentials, ensure you pass them securely. 
Terraform supports various methods for managing credentials, 
but always avoid adding them in plain text.
*/

// ********** providers.tf **********
terraform {
  required_version = ">= 1.5.7"
  backend "" {
  }

  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.54.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.5.1"
    }
  }
}

provider "proxmox" {
  endpoint = "https://PVE_IP_HERE:8006/"
  username = "USER@REALM" // typically root@pam
  password = ""
  # because self-signed TLS certificate is in use
  insecure = true

  ssh {
    agent       = false
    private_key = file("/path/to/id_rsa")
    username    = ""
    node {
      name    = ""
      address = ""
    }
  }
}

// ********** root.tf or main.tf **********
module "" {
  source              = "git::https://github.com/shakir85/terraform_modules.git//proxmox/vm?ref=<RELEADE_ID>"
  proxmox_node_name   = ""
  disk_name           = ""
  ssh_public_key_path = ""
  username            = ""
  hostname            = ""
  timezone            = ""
  cloud_image_storage = ""
  cloud_image_name      = ""
}

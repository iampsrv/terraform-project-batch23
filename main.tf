provider "aws" {
  region = "us-east-1"
  #   access_key = "my-access-key"
  # secret_key = "my-secret-key"
  #   Access_key
  #   Secret_Access_key
}

variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "=3.0.0"
#     }
#   }
# }

terraform { 
  cloud { 
    
    organization = "batch23" 

    workspaces { 
      name = "batch23gfgws" 
    } 
  } 
}
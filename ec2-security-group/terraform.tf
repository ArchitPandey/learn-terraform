terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "5.20.0"
    }

  }
}

provider "random" {

}

provider "aws" {
  region                   = "us-east-1"
  shared_config_files      = ["C:\\Users\\Archit\\.aws\\credentials"]
  shared_credentials_files = ["C:\\Users\\Archit\\.aws\\credentials"]
}
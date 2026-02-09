terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.95.0, < 6.0.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.8.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.2.1"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.7"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 3.0.1"
    }
  }

  backend "s3" {
    bucket = "iac-drake"
    key    = "terraform.tfstate"
    region = "ap-southeast-7"
  }

  required_version = ">= 1.6.3"
}
##

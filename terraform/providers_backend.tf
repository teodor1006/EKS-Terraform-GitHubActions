terraform {
  required_version = ">= 1.3"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 5.38"
    }

    random = {
        source = "hashicorp/random"
        version = "3.6.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
  }

  backend "s3" {
    bucket = "k8s-terra"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}
terraform {
  required_version = "~> 1.7.0"

  backend "s3" {
    bucket = "pvi-main-terraform-s3"
    key    = "examples/self_managed_node_group"
    region = "eu-west-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.57"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.10"
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.39.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-2"
}

variable "names" {
  type    = list(string)
  default = ["스파클", "하나비"]
}

module "personal_custom_vpc" {
  for_each = toset([for s in var.names : "${s}_test"])
  source   = "./custom_vpc"
  env      = "personal_${each.key}"
}

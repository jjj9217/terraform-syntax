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

# 개발환경
module "default_custom_vpc" {
  source = "./custom_vpc"
}

<<<<<<< HEAD
# Create a Public Subnet
resource "aws_subnet" "public_subnet_1" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = "10.0.100.0/24"
  availability_zone = "ap-southeast-2a"
  tags = {
    Name = "hangaramit_public_subnet_1"
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = "10.0.101.0/24"
  availability_zone = "ap-southeast-2a"
  tags = {
    Name = "hangaramit_private_subnet_1"
  }
=======
# 운영환경
module "prd_custom_vpc" {
  source = "./custom_vpc"
>>>>>>> module
}

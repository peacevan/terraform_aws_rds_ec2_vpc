terraform {
  required_version = ">=1.5.4"
  required_providers {
    aws   = ">= 5.11.0"
    local = ">=2.4.0"
  }
  backend "s3" {
    bucket = "my-bucket-pizzaria"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}


module "new-vpc" {
  source         = "./modules/vpc"
  prefix         = var.prefix
  vpc_cidr_block = var.vpc_cidr_block
}

module "new-rds-mysql" {
  source     = "./modules/rds-mysql"
  vpc_id     = module.new-vpc.vpc_id
  subnet_ids = module.new-vpc.subnet_ids
}

module "new-ec2" {
  source     = "./modules/ec2"
  vpc_id     = module.new-vpc.vpc_id
  subnet_ids = module.new-vpc.subnet_ids
}


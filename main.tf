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
  source         = "./modules/new_vpc"
  prefix         = var.prefix
  vpc_cidr_block = var.vpc_cidr_block
}

module "new_rds_mysql" {
  source                   = "./modules/new_rds_mysql"
  rds_engine               = var.rds_engine
  rds_identifier           = var.rds_identifier
  rds_port                 = var.rds_port
  rds_allocated_storage    = var.rds_allocated_storage
  rds_engine_version       = var.rds_engine_version
  rds_instance_class       = var.rds_instance_class
  rds_username             = var.rds_username
  rds_parameter_group_name = var.rds_parameter_group_name
  //rds_vpc_security_group_ids       = module.rds_vpc_security_group_ids
  rds_skip_final_snapshot          = var.rds_skip_final_snapshot
  rds_publicly_accessible          = var.rds_publicly_accessible
  rds_maintenance_window           = var.rds_maintenance_window
  rds_backup_window                = var.rds_backup_window
  rds_backup_retention_period      = var.rds_backup_retention_period
  rds_final_snapshot_identifier    = var.rds_final_snapshot_identifier
  rds_snapshot_identifier          = var.rds_snapshot_identifier
  rds_performance_insights_enabled = var.rds_performance_insights_enabled
  rds_password_db                  = var.rds_password_db



}

module "new_ec2" {
  source     = "./modules/new_ec2"
  vpc_id     = module.new-vpc.vpc_id
  subnet_ids = module.new-vpc.subnet_ids
}


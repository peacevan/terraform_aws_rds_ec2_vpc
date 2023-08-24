variable "prefix" {}
variable "vpc_cidr_block" {}
variable "cluster_name" {}
variable retention_days {}
variable "desired_size" {}
variable "max_size" {}
variable "min_size" {}
#RDS
variable "rds_port" {}
variable "password_db"{}
variable "rds_allocated_storage"{}    
variable "rds_engine_version"{}     
variable "rds_instance_class"{}         
variable "rds_username"{}               
variable "rds_parameter_group_name"{}    
variable "rds_vpc_security_group_ids"{}    
variable "rds_skip_final_snapshot"{}    
variable "rds_publicly_accessible"{}    



//variable "prefix" {}

# RDS
variable "rds_engine"{}
variable "rds_identifier"{}
variable "rds_port" {}

variable "rds_allocated_storage"{}    
variable "rds_engine_version"{}     
variable "rds_instance_class"{}         
variable "rds_username"{}               
variable "rds_parameter_group_name"{}    
//variable "rds_vpc_security_group_ids"{}    
variable "rds_skip_final_snapshot"{}    
variable "rds_publicly_accessible"{}  
variable "rds_maintenance_window"{}
variable "rds_backup_window"{}
variable "rds_backup_retention_period"{}
variable "rds_final_snapshot_identifier"{}
variable "rds_snapshot_identifier"{}
variable "rds_performance_insights_enabled"{}
variable "rds_password_db"{}



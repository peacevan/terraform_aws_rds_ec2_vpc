variable "prefix" {}
variable "vpc_cidr_block" {}
variable "cluster_name" {}
variable "retention_days" {}
variable "desired_size" {}
variable "max_size" {}
variable "min_size" {}

#RDS
/*variable "rds_port" {}
variable "rds_allocated_storage" {}
variable "rds_engine_version" {}
variable "rds_engine" {}
variable "rds_instance_class" {}
variable "rds_username" {}
variable "rds_parameter_group_name" {}
//variable "rds_vpc_security_group_ids"{}
variable "rds_skip_final_snapshot" {}
variable "rds_publicly_accessible" {}
variable "rds_password_db" {}*/

variable "rds_identifier" {}
variable "rds_engine" {}
variable "rds_engine_version" {}
variable "rds_instance_class" {}
variable "rds_allocated_storage" {}
variable "rds_storage_encrypted" {}
variable "rds_name" {}
variable "rds_username" {}
variable "rds_port" {}
variable "rds_maintenance_window" {}
variable "rds_backup_window" {}
variable "rds_backup_retention_period" {}
variable "rds_publicly_accessible" {}
variable "rds_final_snapshot_identifier" {}
variable "rds_snapshot_identifier" {}
variable "rds_performance_insights_enabled" {}
variable "rds_password_db" {}
variable "rds_parameter_group_name" {}
variable "rds_skip_final_snapshot" {}






#main.tf
#defining the provider as aws
provider "aws" {
     region = "us-east-1"
    
}

#create a security group for RDS Database Instance
resource "aws_security_group" "rds_sg2" {
  name = "rds_sg2"
  ingress {
    from_port       = var.rds_port
    to_port         = var.rds_port
    protocol        = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#create a RDS Database Instance
resource "aws_db_instance" "rdsinstance" {

  engine               =  var.rds_engine
  identifier           =  var.rds_identifier
  allocated_storage    =  var.rds_allocated_storage
  engine_version       =  "5.7" // var.rds_engine_version
  instance_class       =  var.rds_instance_class 
  username             =  var.rds_username
  password             =  var.rds_password_db
  parameter_group_name =  "default.mysql5.7" //var.rds_parameter_group_name // "default.mysql5.7"
  vpc_security_group_ids = ["${aws_security_group.rds_sg2.id}"]
  skip_final_snapshot  = true
  publicly_accessible  =  true
  snapshot_identifier  =   var.rds_snapshot_identifier
  //performance_insights_enabled = var.rds_performance_insights_enabled
}
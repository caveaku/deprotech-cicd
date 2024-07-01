provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 20
  engine               = "postgres"
  engine_version       = "12.4"
  instance_class       = "db.t3.micro"
  name                 = "mydatabase"
  username             = "myusername"
  password             = "mypassword"
  parameter_group_name = "default.postgres12"
  skip_final_snapshot  = true
}

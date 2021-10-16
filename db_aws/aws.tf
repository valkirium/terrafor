provider "aws" {
  region = "us-east-1" 
}
resource "aws_db_instance" "postgresql" {
  allocated_storage    = 50
  max_allocated_storage   = 150
  engine               = "postgres"
  engine_version       = "12.5"
  instance_class       = "db.t3.small"
  name                 = "mydb"
  username             = "valkir"
  password             = "valkir19"
  skip_final_snapshot  = true
  backup_retention_period = 7
//  availability_zone = "us-east-1a"
  multi_az = true 
  db_subnet_group_name = aws_db_subnet_group.ex.name
}

resource "aws_db_subnet_group" "ex" {
  subnet_ids = data.aws_subnet_ids.subnets.ids
}

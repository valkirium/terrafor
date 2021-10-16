provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "HW_SG" {
  ami = "ami-0c2b8ca1dad447f8a"
  instance_type = var.HW_SG_flavor
  subnet_id = sort(data.aws_subnet_ids.subnets.ids)[0]
  tags = {
    Name = "HW_SG"
  }
  vpc_id 
}

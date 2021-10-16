data "aws_vpcs" "current" {
 }

data "aws_vpc" "my_vpc" {
  tags = {
   Name = var.vpc_name
}
}
data "aws_subnet_ids" "subnets" {
  vpc_id = data.aws_vpc.my_vpc.id
}

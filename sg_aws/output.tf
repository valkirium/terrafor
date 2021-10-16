output "HW_SG_ip" {
  value = aws_instance.HW_SG.private_ip
}
output "HW_SG_az" {
  value = aws_instance.HW_SG.availability_zone
}
output "My_VPCs" {
  value = data.aws_vpcs.current.ids
}
output "subnets" {
  value = data.aws_subnet_ids.subnets.ids
}
output "My_VPC_name" {
  value = data.aws_vpc.my_vpc.arn
}


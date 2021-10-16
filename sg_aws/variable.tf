variable "aws_region" {
  default = "us-east-1"
}

variable "HW_SG_flavor" {
  default = "t2.micro"
}

variable "vpc_name" {
  default = "NC.PROD.DMP_R10"
}

variable "allowed_ports" {
  default = ["22", "80"]
}

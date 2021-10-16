resource "aws_sequrity_group" "HW_SG" {

dynamic "ingress" {
for each = var.allowed_ports

ingres {
from_port = ingress.value
to_port = ingress.value
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
}
egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
     
    }
  ]
}

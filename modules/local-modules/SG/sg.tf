resource "aws_security_group" "demoSG" {
  name = "demoSG"
  ingress {
    from_port = local.app_port
    protocol  = "TCP"
    to_port   = local.app_port
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    protocol  = "TCP"
    to_port   = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = local.common_tags
}
locals {
  app_port = 6553
}
locals {
  common_tags = {
    Name        = "appsg"
    Environment = "dev"
  }
}
output "sg_id" {
  value = aws_security_group.demoSG.id
}


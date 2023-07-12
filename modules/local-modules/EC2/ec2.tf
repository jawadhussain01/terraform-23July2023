resource "aws_instance" "demoEC2" {
  ami                    = data.aws_ami.RH.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_groups
  count                  = var.env_type == "prod" ? 2 : 0
  tags                   = local.common_tags
}
output "instance_count" {
  value = length(aws_instance.demoEC2[*])
}
locals {
  common_tags = {
    support_group = "SA"
    function      = "lab"
    DC            = "UK"
  }
}
output "display_public_ip" {
  value = aws_instance.demoEC2[*].public_ip
}

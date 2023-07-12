data "aws_ami" "RH" {
  owners      = ["amazon"]
  most_recent = true
  filter {
    name   = "name"
    values = ["RHEL-9.2.0_HVM-*"]
  }
}
output "image_id" {
  value = data.aws_ami.RH.image_id
}
variable "instance_type" {
  type = string
}
variable "security_groups" {
  type = list(string)
}
variable "env_type" {
  type = string
}

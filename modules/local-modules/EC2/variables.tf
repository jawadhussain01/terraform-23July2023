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
  type    = string
  default = "t2.micro"
}
variable "security_groups" {
  type    = list(string)
  default = ["sg-03eb2663569f00ce4", "sg-05022dca3cffc38a2"]
}
variable "env_type" {
  type    = string
  default = "prod"
}

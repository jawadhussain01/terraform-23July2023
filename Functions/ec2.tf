resource "aws_instance" "demoEC2" {
  ami                    = lookup(var.ami_id, var.region,"ami-06ca3ca175f37dd66")
  instance_type          = var.instance_type
  count = length(var.instance_names)
  tags = {
    Name = element(var.instance_names,count.index )
  }
}
locals {
  date_time = formatdate("DD MMM YYYY hh:mm", timestamp())
}
output "Date" {
  value = local.date_time
}

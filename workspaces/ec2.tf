variable "instance_type" {
  type = map(any)
  default = {
    default = "t2.micro"
    dev = "t2.micro"
    prod = "t2.large"
  }
}
resource "aws_instance" "demoEC2" {
   ami = "ami-06ca3ca175f37dd66"
  instance_type = lookup(var.instance_type, terraform.workspace)
}

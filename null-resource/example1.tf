resource "aws_instance" "demoEC2" {
  ami           = "ami-06ca3ca175f37dd66"
  instance_type = "t2.micro"
  count         = 3
}
resource "null_resource" "get_ips" {
  triggers = {
    public_ips = join(",", aws_instance.demoEC2[*].public_ip)
  }
  provisioner "local-exec" {
    command = "echo ${null_resource.get_ips.triggers.public_ips} > public_ips"
  }
}
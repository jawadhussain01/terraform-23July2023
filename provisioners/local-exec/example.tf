resource "aws_instance" "demoEC2" {
  ami           = "ami-06ca3ca175f37dd66"
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.demoEC2.private_ip} >> private_ips"
  }
}
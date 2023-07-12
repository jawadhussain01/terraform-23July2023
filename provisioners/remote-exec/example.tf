resource "aws_instance" "demoEC2" {
  ami                    = "ami-06ca3ca175f37dd66"
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  vpc_security_group_ids = ["sg-05022dca3cffc38a2"]
  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("./terraform-key.pem")
    }
    inline = [
      "sudo yum install -y nginx",
      "sudo systemctl restart nginx"
    ]
    on_failure = continue
  }
}
output "public_ip" {
  value = aws_instance.demoEC2.public_ip
}
resource "aws_instance" "demoEC2" {
  ami = "ami-06ca3ca175f37dd66"
  instance_type = "t2.micro"
}

## Run terraform import aws_instance.demoEC2 ami-06ca3ca175f37dd66. This will update the sate file
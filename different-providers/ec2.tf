
resource "aws_instance" "demoEC2" {
  ami           = "ami-06ca3ca175f37dd66"
  instance_type = "t2.micro"
}
resource "aws_instance" "testEC2" {
  ami           = "ami-0d13e3e640877b0b9"
  provider      = aws.mumbai
  instance_type = "t2.micro"
}  
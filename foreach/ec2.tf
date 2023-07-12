resource "aws_instance" "demoEC2" {
  ami  = "ami-06ca3ca175f37dd66"
  for_each = {
    key1 = "t2.micro"
    key2 = "t2.medium"
  }
  instance_type = each.value
  key_name = each.key
  tags = {
    Name = each.value
  }
}
module "mysg" {
  source = "../modules/local-modules/SG"
}
resource "aws_instance" "demoEC2" {
  ami                    = "ami-06ca3ca175f37dd66"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [module.mysg.sg_id]
}

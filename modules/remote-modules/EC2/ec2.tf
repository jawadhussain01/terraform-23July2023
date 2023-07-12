module "ec2-instance" {
  source        = "terraform-aws-modules/ec2-instance/aws"
  version       = "5.2.1"
  count         = 1
  instance_type = "t2.medium"
}

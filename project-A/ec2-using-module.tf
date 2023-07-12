module "myec2" {
  source = "../modules/local-modules/EC2"
  instance_type = "t2.medium"
}


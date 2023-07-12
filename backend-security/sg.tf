data "terraform_remote_state" "networking" {
  backend = "s3"
  config = {
    bucket = "terraform-remote-demo"
    key    = "networking/terraform.tfstate"
    region = "us-east-1"
  }
}
resource "aws_security_group" "demoSG" {
  name = "terraform-sg"
  ingress {
    from_port   = 0
    protocol    = "TCP"
    to_port     = 22
    cidr_blocks = ["${data.terraform_remote_state.networking.outputs.eip_addr}/32"]
  }
}

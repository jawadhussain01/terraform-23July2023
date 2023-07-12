resource "aws_security_group" "demoSG" {
  name        = "allow TLS"
  description = "Allow internet traffic to TLS"
  dynamic "ingress" {
    for_each = var.sg_ports
    iterator = port
    content {
      to_port     = port.value
      from_port   = port.value
      protocol    = "TCP"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
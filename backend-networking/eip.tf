resource "aws_eip" "demoEIP" {
  vpc = true
}
output "eip_addr" {
  value = "${aws_eip.demoEIP.public_ip}"
}

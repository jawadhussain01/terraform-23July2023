resource "aws_eip" "lb2" {
  vpc        = "true"
  depends_on = [null_resource.health_check2]
}
resource "null_resource" "health_check2" {
  provisioner "local-exec" {
    on_failure = fail
    command = "curl https://google123.com" ## Failing intentionally
  }
}
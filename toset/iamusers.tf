variable "user_list" {
  type    = list(string)
  default = ["user3", "user6", "user9"]
}
resource "aws_iam_user" "iam_user" {
  for_each = toset(["suer1", "user3", "user6", "user9"])
  name     = each.key
}

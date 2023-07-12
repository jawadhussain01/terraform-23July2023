resource "aws_iam_user" "iam_user" {
  count = 3
  name  = "user_${count.index}"
}
output "user_name" {
  value = aws_iam_user.iam_user[*].name
}
output "user_arn" {
  value = aws_iam_user.iam_user[*].arn
}
output "combined" {
  # value = zipmap(aws_iam_user.iam_user[*].name, aws_iam_user.iam_user[*].arn)
  value = zipmap(aws_iam_user.iam_user[*].name, aws_iam_user.iam_user[*].unique_id)
}
output "combined_1" {
  value = zipmap(aws_iam_user.iam_user[*].name, aws_iam_user.iam_user[*].arn)
}
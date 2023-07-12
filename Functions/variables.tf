variable "ami_id" {
  type = map(any)
}
variable "instance_names" {
  type = list(string)
}
variable "region" {
  type = string
}
variable "instance_type" {
  type = string
}
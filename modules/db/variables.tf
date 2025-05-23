variable "db_subnets" {
    type = list(string)
    default = [
    "subnet-0a1b2c3d4e5f6a7b8", # us-east-1a
    "subnet-1a2b3c4d5e6f7a8b9"  # us-east-1b
  ]

}
variable "db_username" {}
variable "db_password" {}
variable "security_group_id" {}
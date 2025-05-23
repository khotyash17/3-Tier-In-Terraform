variable "vpc_cidr" {}
variable "region" {}
variable "availability_zone" {
    type = map(string)
    default = {
        web = "us-east-1a"
        app = "us-east-1b"
        db = "us-east-1c"
        db_2 = "us-east-1d"
    }
}
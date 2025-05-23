resource "aws_instance" "web" {
  count = 2
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = element(var.web_subnets, 0)
  vpc_security_group_ids = [var.security_group_id]
  tags = { Name = "web"}
}

output "instance_ids" {
  value = aws_instance.web[*].id
}


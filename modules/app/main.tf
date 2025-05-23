resource "aws_instance" "app" {
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = element(var.private_subnets, 0)
  vpc_security_group_ids = [var.security_group_id]
  tags = { Name = "app" }
}

output "instance_ids" {
  value = aws_instance.app[*].id
}

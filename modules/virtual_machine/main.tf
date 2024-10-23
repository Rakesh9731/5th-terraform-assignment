resource "aws_instance" "vm" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  security_groups = [var.security_group]

  tags = {
    Name = var.name
  }
}

variable "ami" {}
variable "instance_type" {}
variable "key_name" {}
variable "subnet_id" {}
variable "security_group" {}
variable "name" {}

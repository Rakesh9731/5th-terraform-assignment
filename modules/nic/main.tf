resource "aws_network_interface" "nic" {
  subnet_id       = var.subnet_id
  security_groups = [var.security_group]
  private_ips     = [var.private_ip]

  tags = {
    Name = "my-nic"
  }
}

variable "subnet_id" {}
variable "security_group" {}
variable "private_ip" {}

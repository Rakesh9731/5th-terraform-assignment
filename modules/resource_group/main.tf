resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

  tags = {
    Name = var.name
  }
}

resource "aws_security_group" "sg" {
  vpc_id     = aws_vpc.main.id  # Ensure the security group is associated with the right VPC
  # ...
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr_block
  availability_zone       = "us-east-1a"

  tags = {
    Name = "${var.name}-subnet"
  }
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_id" {
  value = aws_subnet.main.id
}

provider "aws" {
  region = var.region
}

# VPC, Subnet, and Security Group Module
module "resource_group" {
  source             = "./modules/resource_group"
  
  vpc_id             = var.vpc_id
  subnet_id          = var.subnet_id
  security_group     = var.security_group

  # Providing the required arguments (even if not used in practice)
  name               = "my-vpc"              # Arbitrary name
  cidr_block         = "10.0.0.0/24"         # Use valid VPC CIDR
  subnet_cidr_block  = "10.0.0.0/28"         # Use subnet CIDR from your setup
}

# Network Interface Module
module "nic" {
  source          = "./modules/nic"
  subnet_id       = var.subnet_id
  security_group  = var.security_group
  private_ip      = var.private_ip  # Ensure it's within the range (10.0.0.0/28)
}

# EC2 Instance Module
module "virtual_machine" {
  source          = "./modules/virtual_machine"
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_name
  subnet_id       = var.subnet_id
  security_group  = var.security_group
  name            = var.name
}

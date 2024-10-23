variable "name" {
  description = "The name of the resource group (VPC)."
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
}

variable "vpc_id" {}
variable "subnet_id" {}
variable "security_group" {}

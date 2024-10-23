variable "ami" {
  default     = "ami-0866a3c8686eaeeba"
  description = "The AMI ID for the EC2 instance."
}

variable "instance_type" {
  default     = "t2.micro"
  description = "The EC2 instance type."
}

variable "key_name" {
  default     = "ubuntu.ppk"
  description = "The name of the key pair."
}

variable "region" {
  default     = "us-east-1"
  description = "AWS region."
}

variable "vpc_id" {
  default     = "vpc-088dccd069cae3ddd"
  description = "The manually created VPC ID."
}

variable "subnet_id" {
  default     = "subnet-0a121784fe5c33e77"
  description = "The manually created Subnet ID."
}

variable "security_group" {
  default     = "sg-052932479b1ad5a96"
  description = "The manually created Security Group ID."
}

variable "private_ip" {
  default     = "10.0.0.5"
  description = "Private IP address for the instance."
}

variable "name" {
  default     = "my-ec2-instance"
  description = "The name to assign to the EC2 instance and other resources."
}

variable "cidr_block" {
  default     = "10.0.0.0/24"
  description = "CIDR block for the VPC."
}

variable "subnet_cidr_block" {
  default     = "10.0.0.0/28"
  description = "CIDR block for the subnet."
}

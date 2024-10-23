resource "aws_eip" "ip" {
  domain = "vpc"
}

output "eip_address" {
  value = aws_eip.ip.public_ip
}

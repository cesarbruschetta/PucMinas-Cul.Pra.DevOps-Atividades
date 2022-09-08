output "ec2_public_ip_1" {
  value = aws_instance.this[0].public_ip
}

output "ec2_public_ip_2" {
  value = aws_instance.this[1].public_ip
}
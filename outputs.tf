output "vpc_id" {
  description = "Id of the main VPC"
  value       = aws_vpc.main_vpc_1.id
}

output "public_subnet_ids" {
  description = "Ids of all public subnets"
  value       = [aws_subnet.pb_subnet_1.id, aws_subnet.pb_subnet_2.id]
}

output "private_subnet_ids" {
  description = "Ids of all private subnets"
  value       = [aws_subnet.pv_subnet_1.id, aws_subnet.pv_subnet_2.id]
}

output "nat_gateway_public_ip" {
  description = "public ip address of NAT gateway"
  value       = aws_eip.nat_gwy_eip.public_ip
}

output "internet_gateway" {
  description = "Id of the internet gateway"
  value       = aws_internet_gateway.int_gwy.id
}
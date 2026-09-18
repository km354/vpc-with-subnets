resource "aws_route_table" "rt_public_subnets" {
  vpc_id = aws_vpc.main_vpc_1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.int_gwy.id
  }
}

resource "aws_route_table" "rt_private_subnets" {
  vpc_id = aws_vpc.main_vpc_1.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gwy.id
  }
}
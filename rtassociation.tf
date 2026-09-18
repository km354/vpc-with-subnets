resource "aws_route_table_association" "rt_associate_1" {
  route_table_id = aws_route_table.rt_public_subnets.id
  subnet_id      = aws_subnet.pb_subnet_1.id
}

resource "aws_route_table_association" "rt_associate_2" {
  route_table_id = aws_route_table.rt_public_subnets.id
  subnet_id      = aws_subnet.pb_subnet_2.id
}

resource "aws_route_table_association" "rt_associate_3" {
  route_table_id = aws_route_table.rt_private_subnets.id
  subnet_id      = aws_subnet.pv_subnet_1.id
}

resource "aws_route_table_association" "rt_associate_4" {
  route_table_id = aws_route_table.rt_private_subnets.id
  subnet_id      = aws_subnet.pv_subnet_2.id
}
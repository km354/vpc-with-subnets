resource "aws_vpc" "main_vpc_1" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "main_vpc_1"
  }
}

resource "aws_subnet" "pb_subnet_1" {
  vpc_id                  = aws_vpc.main_vpc_1.id
  cidr_block              = var.cidr_public_subnets[0]
  availability_zone       = var.availability_zones[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "pb_subnet_2" {
  vpc_id                  = aws_vpc.main_vpc_1.id
  cidr_block              = var.cidr_public_subnets[1]
  availability_zone       = var.availability_zones[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-2"
  }
}

resource "aws_subnet" "pv_subnet_1" {
  vpc_id                  = aws_vpc.main_vpc_1.id
  cidr_block              = var.cidr_private_subnets[0]
  availability_zone       = var.availability_zones[0]
  map_public_ip_on_launch = false

  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_subnet" "pv_subnet_2" {
  vpc_id                  = aws_vpc.main_vpc_1.id
  cidr_block              = var.cidr_private_subnets[1]
  availability_zone       = var.availability_zones[1]
  map_public_ip_on_launch = false

  tags = {
    Name = "private-subnet-2"
  }
}

resource "aws_internet_gateway" "int_gwy" {
  vpc_id = aws_vpc.main_vpc_1.id

  tags = {
    Name = "Internet-gateway-1"
  }
}

resource "aws_eip" "nat_gwy_eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "nat_gwy" {
  allocation_id = aws_eip.nat_gwy_eip.id
  subnet_id     = aws_subnet.pb_subnet_1.id

  tags = {
    Name = "nat-gateway-1"
  }

  depends_on = [aws_internet_gateway.int_gwy]
}
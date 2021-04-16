resource "aws_subnet" "public-subnet" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr
  availability_zone = var.public_subnet_region

  tags = {
  Name = var.public_subnet_name
  }
}

resource "aws_subnet" "private-subnet" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr
  availability_zone = var.private_subnet_region

  tags = {
    Name = var.private_subnet_name
  }
}


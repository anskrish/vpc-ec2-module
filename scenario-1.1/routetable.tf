resource "aws_route_table" "public-subnet" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.routetable_cidr
    gateway_id = aws_internet_gateway.default.id
  }
  tags = {
  Name = var.routetable_name
  }
}
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public-subnet.id
  route_table_id = aws_route_table.public-subnet.id
}

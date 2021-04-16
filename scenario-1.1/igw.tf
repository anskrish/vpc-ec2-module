resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = var.igw_name
  }
}

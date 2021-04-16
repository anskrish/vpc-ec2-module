resource "aws_instance" "web-1" {
  for_each = {
    private = aws_subnet.private-subnet.id
    public = aws_subnet.public-subnet.id
   }
  ami = var.ec2_ami_id
  availability_zone = var.ec2_az
  instance_type = var.ec2_type
  vpc_security_group_ids = ["${aws_security_group.web.id}"] 
  subnet_id = each.value
  tags = {
  Name = "${each.key}-Instance"
  }
}


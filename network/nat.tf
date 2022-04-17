resource "aws_nat_gateway" "nat1" {
  allocation_id = aws_eip.eip1.id
  subnet_id     = aws_subnet.publicsara1.id

  tags = {
    Name = "nat1-${var.workspace_name}"
  }
  
}

resource "aws_nat_gateway" "nat2" {
  allocation_id = aws_eip.eip2.id
  subnet_id     = aws_subnet.publicsara2.id

  tags = {
    Name = "nat2-${var.workspace_name}"
  }
  
}
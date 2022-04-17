resource "aws_route_table" "sara-rt-public" {
  vpc_id = aws_vpc.sara.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.sara_gw.id
  }

 
  tags = {
    Name = "sara-rt-public-${var.workspace_name}"
  }
}
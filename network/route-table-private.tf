resource "aws_route_table" "sara-rt-private" {
  vpc_id = aws_vpc.sara.id
 
   route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat1.id
  }


 
  tags = {
    Name = "sara-rt-private-${var.workspace_name}"
  }
}
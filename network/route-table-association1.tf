resource "aws_route_table_association" "sara_public_association_one" {
  subnet_id      = aws_subnet.publicsara1.id
  route_table_id = aws_route_table.sara-rt-public.id
}
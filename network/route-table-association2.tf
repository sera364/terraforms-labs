resource "aws_route_table_association" "sara_public_association_two" {
  subnet_id      = aws_subnet.publicsara2.id
  route_table_id = aws_route_table.sara-rt-public.id
}
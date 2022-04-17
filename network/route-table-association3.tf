resource "aws_route_table_association" "sara_private_association_three" {
  subnet_id      = aws_subnet.privatesara1.id
  route_table_id = aws_route_table.sara-rt-private.id
}
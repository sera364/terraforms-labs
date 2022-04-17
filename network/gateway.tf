resource "aws_internet_gateway" "sara_gw" {
  vpc_id = aws_vpc.sara.id

  tags = {
    Name = "sara_gw-${var.workspace_name}"
  }
} 
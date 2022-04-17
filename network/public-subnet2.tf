resource "aws_subnet" "publicsara2" {
  vpc_id     = aws_vpc.sara.id
  cidr_block = var.public2_cidr
  #"10.0.3.0/24"

  tags = {
    Name = "publicsara2-${var.workspace_name}"
  }
  availability_zone = "${var.region}b"
  #"us-east-2b"
  map_public_ip_on_launch = "true"
}
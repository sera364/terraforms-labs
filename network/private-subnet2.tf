resource "aws_subnet" "privatesara2" {
  vpc_id     = aws_vpc.sara.id
  cidr_block = var.private2_cidr
  #"10.0.4.0/24"

  tags = {
    Name = "privatesara2-${var.workspace_name}"
  }
  availability_zone = "${var.region}b"
  #"us-east-2b"
  map_public_ip_on_launch = "false"
}
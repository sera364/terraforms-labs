resource "aws_subnet" "privatesara1" {
  vpc_id     = aws_vpc.sara.id
  cidr_block = var.private1_cidr
  #"10.0.2.0/24"

  tags = {
    Name = "privatesara1-${var.workspace_name}"
  }
  availability_zone = "${var.region}a"
  #"us-east-2a"
  map_public_ip_on_launch = "false"
}
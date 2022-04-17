resource "aws_subnet" "publicsara1" {
  vpc_id     = aws_vpc.sara.id
  cidr_block = var.public1_cidr
  #"10.0.1.0/24"

  tags = {
    Name = "publicsara1-${var.workspace_name}"
  }
  availability_zone = "${var.region}a"
  #"us-east-2a"
  map_public_ip_on_launch = "true"
}
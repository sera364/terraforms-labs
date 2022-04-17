resource "aws_vpc" "sara" {
  cidr_block       = var.vpc_cidr
  #"10.0.0.0/16"
  

  tags = {
    Name = "vpc-${var.workspace_name}"
  }
  enable_dns_support = true
  enable_dns_hostnames = true
}
resource "aws_security_group" "security-group-private" {
  name        = "security-group-private"
  description = "allow ssh and port 3000"
  vpc_id      = module.network.vpc-id

  ingress {
    description      = "ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [module.network.vpc-cidr]
    
  }
  ingress {
    description      = "port 3000"
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "security-group-private"
  }
}

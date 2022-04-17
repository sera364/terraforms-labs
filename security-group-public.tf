resource "aws_security_group" "security-group-public" {
  name        = "security-group-public"
  description = "allow ssh only"
  vpc_id      = module.network.vpc-id

  ingress {
    description      = "ssh"
    from_port        = 22
    to_port          = 22
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
    Name = "security-group-public"
  }
}
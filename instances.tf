resource "aws_instance" "sara-public-instance"{
  ami                         = "ami-0fb653ca2d3203ac1"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.public_key_pair.id
  vpc_security_group_ids      = [aws_security_group.security-group-public.id]
  subnet_id                   = module.network.puplic1-id
  associate_public_ip_address = true
    provisioner "local-exec" {
        command = "echo ${self.public_ip}"
    }
  root_block_device {
    volume_size           = 8
    delete_on_termination = true
  }

  tags = {
    Name = "sara-public-instance"
  }
}

resource "aws_instance" "sara-private-instance"{
  ami                         = "ami-0fa49cc9dc8d62c84"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.public_key_pair.id
  vpc_security_group_ids      = [aws_security_group.security-group-private.id]
  subnet_id                   = module.network.private1-id
  associate_public_ip_address = false

  root_block_device {
    volume_size           = 8
    delete_on_termination = true
  }

  tags = {
    Name = "sara-private-instance"
  }
}

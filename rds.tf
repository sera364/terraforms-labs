resource "aws_db_instance" "rds-sara" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = var.username
  password             = var.password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  vpc_security_group_ids = [aws_security_group.security-group-database.id]
  db_subnet_group_name = aws_db_subnet_group.subnet-db-group.name
}
resource "aws_security_group" "security-group-database" {
  name        = "security-group-database"
  description = "allow ports for database"
  vpc_id      = module.network.vpc-id

  ingress {
    description      = "all tcp"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "security-group-database"
  }
}

resource "aws_db_subnet_group" "subnet-db-group" {
  name       = "subnet-db-group"
  subnet_ids = [module.network.private1-id , module.network.private2-id]

  tags = {
    Name = "My DB subnet group"
  }
}
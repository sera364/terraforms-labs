resource "aws_eip" "eip1" {
  
  vpc      = true
  
  tags = {
    Name = "eip1-${var.workspace_name}"
  }
}

resource "aws_eip" "eip2" {
  
  vpc      = true
  
  tags = {
    Name = "eip2-${var.workspace_name}"
  }
}



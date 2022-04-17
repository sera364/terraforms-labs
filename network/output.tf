output puplic1-id {
  value       = aws_subnet.publicsara1.id
  
}

output private1-id {
  value       = aws_subnet.privatesara1.id
  
}

output private2-id {
  value       = aws_subnet.privatesara2.id
  
}

output vpc-id {
  value       = aws_vpc.sara.id
  
}
output vpc-cidr {
  value       = aws_vpc.sara.cidr_block
  
}

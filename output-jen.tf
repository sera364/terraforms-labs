output puplicec2 {
  value       = aws_instance.sara-public-instance.public_ip
  
}
output privateec2 {
  value       = aws_instance.sara-private-instance.private_ip
  
}
output private_key {
  value       = tls_private_key.private_key_pair.private_key_pem
  sensetive = true
  
}

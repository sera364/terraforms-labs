output puplicec2 {
  value       = aws_instance.sara-public-instance.public_ip
  
}
output privateec2 {
  value       = aws_instance.sara-private-instance.private_ip
  
}
output private_key {
  value       = tls_private_key.private_key_pair.private_key_pem
  sensitive = true
  
}

output rds_hostname {
  value = aws_db_instance.rds-sara.address
}

output rds_port {
  value = aws_db_instance.rds-sara.port
}

output rds_username {
  value = aws_db_instance.rds-sara.username
}

output password {
  value = aws_db_instance.rds-sara.password
}

output redis_hostname {
  value = aws_elasticache_cluster.redis-sara.cache_nodes[0].address 
}
output redis_port {
  value = aws_elasticache_cluster.redis-sara.port
}

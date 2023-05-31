output "address" {
  value       = aws_db_instance.example.address
  description = "Connection to the database in this endpoint"
}

output "port" {
  value       = aws_db_instance.example.port
  description = "Port number of database"
}
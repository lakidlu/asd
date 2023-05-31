variable "db_username" {
  description = "Username of database"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Username password to database"
  type        = string
  sensitive   = true
}

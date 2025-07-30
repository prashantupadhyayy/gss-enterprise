variable "server_name" {
  description = "Name of the SQL Server"
  type        = string
}

variable "db_name" {
  description = "Name of the SQL Database"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group for SQL resources"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "admin_username" {
  description = "SQL admin login username"
  type        = string
  default     = "sqladminuser"
}

variable "admin_password" {
  description = "SQL admin login password"
  type        = string
  sensitive   = true
}

variable "location" {
  description = "Azure region for deployment"
  type        = string
  default     = "East US"
}

variable "prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "gss-ent"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resources"
  default = {
    environment = "dev"
    project     = "gss-enterprise-dataops"
  }
}

variable "sql_admin_password" {
  description = "Admin password for SQL server"
  type        = string
  sensitive   = true
}

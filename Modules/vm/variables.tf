variable "vm_name" {
  description = "Name of the VM"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group where VM will exist"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the NIC"
  type        = string
}

variable "admin_username" {
  description = "VM admin username"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "VM admin password"
  type        = string
  default     = "P@ssword1234!"
}

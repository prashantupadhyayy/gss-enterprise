variable "storage_account_name" {
  description = "Unique name for the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group where storage will exist"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "adf_name" {
  type        = string
  description = "Name of the Azure Data Factory"
}

variable "rg_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "location" {
  type        = string
  description = "Azure Region"
}

variable "tags" {
  type        = map(string)
  description = "Resource tags"
}

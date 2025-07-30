output "resource_group_name" {
  description = "Resource Group created by this Terraform run"
  value       = module.resource_group.name
}

output "subnet_id" {
  description = "Subnet ID created by this Terraform run"
  value       = module.network.subnet_id
}

output "storage_account_name" {
  description = "Storage Account created by this Terraform run"
  value       = module.storage.storage_account_name
}


output "vm_name" {
  description = "VM created by this Terraform run"
  value       = module.vm.vm_name
}

output "adf_name" {
  value = module.adf.adf_name
}


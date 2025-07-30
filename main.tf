module "resource_group" {
  source   = "./Modules/resource_group"
  location = var.location
  name     = "${var.prefix}-rg"
}

module "network" {
  source              = "./Modules/network"
  location            = var.location
  resource_group_name = module.resource_group.name
  vnet_name           = "${var.prefix}-vnet"
  address_space       = ["10.0.0.0/16"]
  subnet_name         = "${var.prefix}-subnet"
  subnet_prefix       = ["10.0.1.0/24"]
}

module "storage" {
  source               = "./Modules/storage"
  location             = var.location
  resource_group_name  = module.resource_group.name
  storage_account_name = lower(replace("${var.prefix}storage", "-", ""))
}

module "vm" {
  source              = "./Modules/vm"
  location            = var.location
  resource_group_name = module.resource_group.name
  vm_name             = "${var.prefix}-vm"
  subnet_id           = module.network.subnet_id
}

module "adf" {
  source   = "./Modules/adf"
  adf_name = "${var.prefix}-adf"
  rg_name  = module.resource_group.name
  location = var.location
  tags     = var.tags
}

module "sql" {
  source              = "./Modules/sql"
  location            = var.location
  resource_group_name = module.resource_group.name
  server_name         = lower(replace("${var.prefix}sqlserver", "-", ""))
  db_name             = lower(replace("${var.prefix}realtaxdb", "-", ""))
  admin_username      = "sqladminuser"
  admin_password      = var.sql_admin_password
}

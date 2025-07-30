resource "azurerm_mssql_server" "sql_server" {
  name                         = var.server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_mssql_database" "sql_db" {
  name               = var.db_name
  server_id          = azurerm_mssql_server.sql_server.id
  collation          = "SQL_Latin1_General_CP1_CI_AS"
  sku_name           = "Basic"
  max_size_gb        = 2
  zone_redundant     = false
  read_scale         = false
  auto_pause_delay_in_minutes = 60
}

resource "azurerm_mssql_firewall_rule" "allow_azure_services" {
  name             = "AllowAzure"
  server_id        = azurerm_mssql_server.sql_server.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "0.0.0.0"
}

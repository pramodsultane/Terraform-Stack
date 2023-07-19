module "FlexibleServer" {
  source = "module-path"

  rg_name                       = resource_group_name
  location                      = azurerm_resource_group.example.location
  postgre_flexible_server_name  = "example-psqlflexibleserver"
  administrator_login           = "psqladmin"
  administrator_password        = "password@pgsql"
  postgre_sku_name              = "GP_Standard_D4s_v3"
  postgre_version               = 15
  geo_redundant_backup_enabled  = true
  postgre_storage_mb            = 32768
  postgre_backup_retention_days = 7
  subnet_id                     = subnet_id
  private_dns_zone_id           = private_dns_zone_id
}

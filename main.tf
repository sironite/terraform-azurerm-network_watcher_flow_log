resource "azurerm_network_watcher_flow_log" "this" {
  network_watcher_name = azurerm_network_watcher.test.name
  resource_group_name  = var.resource_group_name
  name                 = var.network_watcher_flow_log_name

  network_security_group_id = azurerm_network_security_group.test.id
  storage_account_id        = azurerm_storage_account.test.id
  enabled                   = true

  retention_policy {
    enabled = true
    days    = 7
  }

  traffic_analytics {
    enabled               = true
    workspace_id          = azurerm_log_analytics_workspace.test.workspace_id
    workspace_region      = azurerm_log_analytics_workspace.test.location
    workspace_resource_id = azurerm_log_analytics_workspace.test.id
    interval_in_minutes   = 10
  }

  tags = var.tags
}
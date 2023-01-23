resource "azurerm_network_watcher_flow_log" "this" {
  network_watcher_name = var.network_watcher_name
  resource_group_name  = var.resource_group_name
  name                 = var.network_watcher_flow_log_name

  network_security_group_id = var.network_security_group_id
  storage_account_id        = var.storage_account_id
  enabled                   = var.network_watcher_flow_log_enabled
  version                   = var.network_watcher_flow_log_version

  retention_policy {
    enabled = var.retention_policy_enabled
    days    = var.retention_policy_days
  }

  traffic_analytics {
    enabled               = var.traffic_analytics_enabled
    workspace_id          = var.workspace_id
    workspace_region      = var.workspace_region
    workspace_resource_id = var.workspace_resource_id
    interval_in_minutes   = var.traffic_analytics_interval_in_minutes
  }

  tags = var.tags
}
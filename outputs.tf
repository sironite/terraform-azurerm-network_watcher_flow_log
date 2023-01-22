output "network_watcher_flow_log_id" {
  description = "The ID of the Network Watcher."
  sensitive   = false
  value       = try(azurerm_network_watcher_flow_log.this.id)
}
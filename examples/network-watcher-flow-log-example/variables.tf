variable "network_watcher_flow_log_name" {
  description = "The name of the Network Watcher Flow Log. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the Network Watcher. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "network_watcher_name" {
  description = "The name of the Network Watcher. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "network_security_group_id" {
  description = "The ID of the Network Security Group for which to enable flow logs for. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "storage_account_id" {
  description = "The ID of the Storage Account where flow logs are stored."
  type        = string
  sensitive   = false
}
variable "network_watcher_flow_log_enabled" {
  description = "Should Network Flow Logging be Enabled"
  type        = bool
  sensitive   = false
  default     = true
}
variable "network_watcher_flow_log_version" {
  description = "The version (revision) of the flow log. Possible values are `1` and `2`."
  type        = number
  sensitive   = false
  default     = 2
}
variable "retention_policy_enabled" {
  description = "Boolean flag to enable/disable retention."
  type        = bool
  sensitive   = false
  default     = true
}
variable "retention_policy_days " {
  description = "The number of days to retain flow log records."
  type        = number
  sensitive   = false
  default     = 7
}
variable "traffic_analytics_enabled" {
  description = "Boolean flag to enable/disable traffic analytics."
  type        = bool
  sensitive   = false
  default     = true
}
variable "workspace_id" {
  description = "The resource GUID of the attached workspace."
  type        = string
  sensitive   = false
}
variable "workspace_region" {
  description = "The location of the attached workspace."
  type        = string
  sensitive   = false
}
variable "workspace_resource_id" {
  description = "The resource ID of the attached workspace."
  type        = string
  sensitive   = false
}
variable "traffic_analytics_interval_in_minutes" {
  description = " How frequently service should do flow analytics in minutes. Defaults to `60`."
  type        = number
  sensitive   = false
  default     = 60
}
variable "tags" {
  description = " A mapping of tags to assign to the resource."
  type        = map(any)
  default     = {}
}

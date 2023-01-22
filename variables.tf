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
variable "tags" {
  description = " A mapping of tags to assign to the resource."
  type        = map
  default     = {}
}
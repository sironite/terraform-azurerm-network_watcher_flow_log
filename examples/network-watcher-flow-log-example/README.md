# Terraform module | AzureRM - Network Watcher Flow Log

This Terraform module is designed to create a Network Watcher Flow Log for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`Network Watcher Flow Log`

```hcl
module "network_watcher_flow_log" {
  source  = "sironite/network_watcher_flow_log/azurerm"
  version = "x.x.x"

  network_watcher_flow_log_name = var.network_watcher_flow_log_name

  network_watcher_name      = var.network_watcher_name
  resource_group_name       = var.resource_group_name
  network_security_group_id = var.network_security_group_id
  storage_account_id        = var.storage_account_id

  workspace_id          = var.workspace_id
  workspace_region      = var.azure_location
  workspace_resource_id = var.workspace_resource_id
}

```

## Authors

The module is maintained by [Sironite](https://github.com/sironite)

## Documentation

> product: https://azure.microsoft.com/en-us/
> 
> Provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest
> 
> Documentation: https://learn.microsoft.com/en-us/azure/?product=popular

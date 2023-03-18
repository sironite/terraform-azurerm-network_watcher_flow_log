<!-- BEGIN_TF_DOCS -->
 # Network Watcher Flow Log
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-network_watcher_flow_log/releases) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_watcher_flow_log)

# Usage - Module

## Network Watcher Flow Log
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

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_watcher_flow_log.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_watcher_flow_log) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| network\_security\_group\_id | The ID of the Network Security Group for which to enable flow logs for. Changing this forces a new resource to be created. | `string` | yes |
| network\_watcher\_flow\_log\_name | The name of the Network Watcher Flow Log. Changing this forces a new resource to be created. | `string` | yes |
| network\_watcher\_name | The name of the Network Watcher. Changing this forces a new resource to be created. | `string` | yes |
| resource\_group\_name | The name of the resource group in which to create the Network Watcher. Changing this forces a new resource to be created. | `string` | yes |
| storage\_account\_id | The ID of the Storage Account where flow logs are stored. | `string` | yes |
| workspace\_id | The resource GUID of the attached workspace. | `string` | yes |
| workspace\_region | The location of the attached workspace. | `string` | yes |
| workspace\_resource\_id | The resource ID of the attached workspace. | `string` | yes |
| network\_watcher\_flow\_log\_enabled | Should Network Flow Logging be Enabled | `bool` | no |
| network\_watcher\_flow\_log\_version | The version (revision) of the flow log. Possible values are `1` and `2`. | `number` | no |
| retention\_policy\_days | The number of days to retain flow log records. | `number` | no |
| retention\_policy\_enabled | Boolean flag to enable/disable retention. | `bool` | no |
| tags | A mapping of tags to assign to the resource. | `map(any)` | no |
| traffic\_analytics\_enabled | Boolean flag to enable/disable traffic analytics. | `bool` | no |
| traffic\_analytics\_interval\_in\_minutes | How frequently service should do flow analytics in minutes. Defaults to `60`. | `number` | no |

## Outputs

| Name | Description |
|------|-------------|
| network\_watcher\_flow\_log\_id | The ID of the Network Watcher. |

## Related documentation
<!-- END_TF_DOCS -->
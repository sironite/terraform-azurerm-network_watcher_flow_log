<!-- BEGIN_TF_DOCS -->
 # Network Watcher
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-network_watcher_flow_log/releases) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_watcher_flow_log)

# Usage - Module

## Network watcher
```hcl

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
| network\_watcher\_flow\_log\_name | The name of the Network Watcher Flow Log. Changing this forces a new resource to be created. | `string` | yes |
| resource\_group\_name | The name of the resource group in which to create the Network Watcher. Changing this forces a new resource to be created. | `string` | yes |
| tags | A mapping of tags to assign to the resource. | `map` | no |

## Outputs

| Name | Description |
|------|-------------|
| network\_watcher\_flow\_log\_id | The ID of the Network Watcher. |

## Related documentation
<!-- END_TF_DOCS -->
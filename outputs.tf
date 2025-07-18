output "vnet_id" {
  value       = azurerm_virtual_network.this.id
  description = "VNet ID"
}

output "subnet_ids" {
  value       = { for k, v in azurerm_subnet.this : k => v.id }
  description = "Subnet IDs"
}

output "nsg_id" {
  value       = var.create_nsg ? azurerm_network_security_group.this[0].id : null
  description = "NSG ID (optional)"
}

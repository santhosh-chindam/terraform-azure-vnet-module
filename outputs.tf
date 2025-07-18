output "vnet_name" {
  value = azurerm_virtual_network.this.name
}

output "vnet_id" {
  value = azurerm_virtual_network.this.id
}

output "subnet_ids" {
  value = [for s in azurerm_subnet.this : s.id]
}

output "nsg_id" {
  value = try(azurerm_network_security_group.this[0].id, null)
}

output "root_management_group_id" {
  description = "The ID of the root management group"
  value       = azurerm_management_group.root.id
}

output "platform_management_group_id" {
  description = "The ID of the Platform management group"
  value       = azurerm_management_group.hierarchy["mg-platform"].id
}

output "landing_zone_management_group_id" {
  description = "The ID of the Landing Zones management group"
  value       = azurerm_management_group.hierarchy["mg-landingzones"].id
}

output "connectivity_management_group_id" {
  description = "The ID of the Connectivity management group"
  value       = azurerm_management_group.hierarchy["mg-connectivity"].id
}

output "identity_management_group_id" {
  description = "The ID of the Identity management group"
  value       = azurerm_management_group.hierarchy["mg-identity"].id
}

output "management_management_group_id" {
  description = "The ID of the Management management group"
  value       = azurerm_management_group.hierarchy["mg-management"].id
}

output "all_management_group_ids" {
  description = "Map of all management group names to their IDs"
  value       = { for k, v in azurerm_management_group.hierarchy : k => v.id }
}

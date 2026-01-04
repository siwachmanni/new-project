output "rg_names" {
  value       = [for rg in azurerm_resource_group.rg : rg.name]
  description = "Names of all resource groups"
}

output "rg_ids" {
  value       = { for key, rg in azurerm_resource_group.rg : key => rg.id }
  description = "IDs of all resource groups"
}
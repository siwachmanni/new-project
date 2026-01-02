output "rg_names" {
  value       = module.rg.rg_names
  description = "Names of all resource groups"
}

output "rg_ids" {
  value       = module.rg.rg_ids
  description = "IDs of all resource groups"
}
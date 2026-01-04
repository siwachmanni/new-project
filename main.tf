module "rg" {
  source        = "./resource_group"
  resourcegroup = var.resourcegroup
}

module "network" {
  source        = "./network"
  resourcegroup = var.resourcegroup
}



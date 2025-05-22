module "resource_group" {

  for_each = var.rgs
  source   = "../azurerm_resource_group"

  rgs = var.rgs
}

module "storage_account" {

  depends_on = [module.resource_group]

  source          = "../azurerm_storage_account"
  storage_account = var.storage_account

}

module "virtual_network" {
  depends_on = [module.resource_group]

  source = "../azurerm_virtual_network"

  vinetworks = var.vinetworks
}

module "subnet" {

  source     = "../azurerm_subnet"
  depends_on = [module.virtual_network]
  subnets    = var.subnets
}



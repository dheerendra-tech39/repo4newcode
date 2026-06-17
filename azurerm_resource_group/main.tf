resource "azurerm_resource_group" "rgs" {

  for_each = var.resourve_groups

  name     = each.value.name
  location = each.value.location
}
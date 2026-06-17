resource "azurerm_public_ip" "bastion_pip" {
  for_each = var.bastions

  name                = each.value.public_ip_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  allocation_method = each.value.allocation_method
  sku               = each.value.ip_sku
}

resource "azurerm_bastion_host" "bastion" {
  for_each = var.bastions

  name                = each.key
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  sku = each.value.sku

  ip_configuration {
    name                 = "bastion-ipconfig"
    subnet_id            = each.value.subnet_id
    public_ip_address_id = azurerm_public_ip.bastion_pip[each.key].id
  }
}
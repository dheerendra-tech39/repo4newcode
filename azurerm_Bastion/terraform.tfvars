bastions = {

  bastion1 = {
    resource_group_name = "rg-dheeru39"
    location            = "Australia East"

    sku = "Standard"

    subnet_id = "/subscriptions/xxxx/resourceGroups/rg-network/providers/Microsoft.Network/virtualNetworks/vnet-dev/subnets/AzureBastionSubnet"

    public_ip_name    = "pip-bastion-dev"
    allocation_method = "Static"
    ip_sku            = "Standard"
  }


}
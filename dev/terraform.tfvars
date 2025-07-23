rgs = 
{
  rg1 = {
    name     = "rg-shineind1"
    location = "East US"
  }
}

rgs = 
{
  rg2 = {
    name     = "rg-shineind2"
    location = "East US"
  }
}


{
  rg3 = {
    name     = "rg-shineind3"
    location = "East US"
  }
}


storage_account = {
  stg1 = {
    name                     = "mystorageaccount"
    resource_group_name      = "rg-shineind1"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "LRS"

  }
}

vinetworks = {

  vnet1 = {
    name                = "vnet-demo1"
    location            = "East US"
    resource_group_name = "rg-shineind1"
    address_space       = ["10.0.0.0/16"]

  }
}


subnets = {

  subnet1 = {
    name                 = "subnet1"
    resource_group_name  = "rg-shineind1"
    virtual_network_name = "vnet-demo1"
    address_prefixes     = ["10.155.0.0/16"]

  }



}
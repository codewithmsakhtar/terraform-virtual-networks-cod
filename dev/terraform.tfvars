rgs = {
  rg1 = {
    name     = "rg-shineind1"
    location = "East US"
  }

  rg3 = {
    name     = "rg-prod1114"
    location = "East US"
  }
rg4 = {
    name     = "rg-prod11156654"
    location = "central india"
  }


}


storage_account = {
  stg1 = {
    name                     = "storageaccount78234"
    resource_group_name      = "rg-prod11156654"
    location                 = "central india"
    account_tier             = "Standard"
    account_replication_type = "LRS"

  }


  stg2 = {
    name                     = "prostoragejfrog0912"
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
provider "azurerm" {
  features {}

  client_id                       = var.client_id
  client_secret                   = var.client_secret
  tenant_id                       = var.tenant_id
  subscription_id                 = var.subscription_id
  resource_provider_registrations = "none"

}


 terraform {
   backend "azurerm" {
     storage_account_name = "teststorageforsiva"
     container_name       = "testcont"
     key                  = "terraform.tfstate"
  access_key              = "hTzXJL3wJewsQdPDgqw6ymdr3BQ2DOdcKcg17Jh9wyJLeE07AHVEi53a4S5oBNKzpzSIvj1qY88++AStXA/ZmQ=="


   }
 }


resource "azurerm_virtual_network" "v-net" {
  name                = var.azurerm_virtual_network
  address_space       = ["10.0.0.0/16"]
  location            = var.azurerm_location
  resource_group_name = var.azurerm_resource_group

}

resource "azurerm_subnet" "subnet-1" {
  name                 = "fromterraform"
  virtual_network_name = var.azurerm_virtual_network
  resource_group_name  = var.azurerm_resource_group
  address_prefixes     = ["10.0.5.0/24"]
  depends_on           = [azurerm_virtual_network.v-net]

}



provider "azurerm" {
  features {}

  client_id                       = var.client_id
  client_secret                   = var.client_secret
  tenant_id                       = var.tenant_id
  subscription_id                 = var.subscription_id
  resource_provider_registrations = "none"

}


# terraform {
#   backend "azurerm" {
#     storage_account_name = "teststorageforsiva"
#     container_name       = "testcont"
#     key                  = "terraform.tfstate"
#     access_key              = "#hTzXJL3wJewsQdPDgqw6ymdr3BQ2DOdcKcg17Jh9wyJLeE07AHVEi53a4S5oBNKzpzSIvj1qY88++AStXA/ZmQ=="


#   }
# }


resource "azurerm_virtual_network" "v-net" {
  name                = var.azurerm_virtual_network
  address_space       = ["10.0.0.0/16"]
  location            = var.azurerm_location
  resource_group_name = var.azurerm_resource_group

}

resource "azurerm_subnet" "subnet-1" {
  name                 = "fromterraform"
  virtual_network_name = var.azurerm_virtual_network
  resource_group_name  = var.azurerm_resource_group
  address_prefixes     = ["10.0.5.0/24"]
  depends_on           = [azurerm_virtual_network.v-net]

>>>>>>> 90abaeee4bbcaac339bbc97fd4b1ae4f2068db35
}

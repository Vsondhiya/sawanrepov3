resource "azurerm_resource_group" "rg_block1" {
  name     = "vinod_rg10"
  location = "West US"
}
resource "azurerm_resource_group" "rg_block2" {
  name     = "vinod_rg11"
  location = "West Europe"
}
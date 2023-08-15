# All resourcegroup definitinos will go here

# resource groups for terraform remote state
resource "azurerm_resource_group" "sbx_tf_rg" {
  name     = var.sbx_resgroup_name
  location = var.sbx_default_location
}
resource "azurerm_resource_group" "rg" {
  name     = "${resource_name_prefix}-${var.resource_group}"
  location = var.resource_group_location
  tags = local.common_tags
}
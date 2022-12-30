resource "azurerm_public_ip" "web_lbpublicip" {
  name                = "${var.web_subnet_name}-web-linuxvm-publicip"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
  sku = "Standard"
  #domain_name_label = "app1-vm-${random_string.myrandom.id}"
}

###create the standard load balancer
resource "azurerm_lb" "web_lb" {
  name                = "${var.web_subnet_name}-web-lb"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku = "Standard"
  frontend_ip_configuration {
    name = "web-lb-publicip"
    public_ip_address_id = azurerm_public_ip.web_lbpublicip.id
  }
}

#create backend address pool
resource "azurerm_lb_backend_address_pol" "web_lb_backend_address_pool" {
    name = "web-backedn"
    loadbalancer_id = azurerm_lb.web_lb.id
}
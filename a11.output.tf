output "web_linuxvm_ip" {
  description = "Web Linux VM ip"
  value = azurerm_public_ip.example.ip_address
}
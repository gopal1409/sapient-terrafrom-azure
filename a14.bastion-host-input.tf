variable "bastion_service_subnet_name" {
  value = "AzureBastionSubnet"
}
variable "bastion_service_address_prefixes" {
  value = ["10.0.101.0/27"]
}
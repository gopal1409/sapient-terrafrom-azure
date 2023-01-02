variable "bastion_service_subnet_name" {
  value = "AzureBastionSubnet"
}
variable "bastion_service_address_prefixes" {
  value = ["10.0.101.0/27"]
}
variable "bastion_subnet_name" {
  type = string 
  value = "bastionsubnet"
}

variable "bastion_subnet_address" {
  type = list[string]
  value = ["10.0.100.0/24"]
}
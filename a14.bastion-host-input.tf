variable "bastion_service_subnet_name" {
  default = "AzureBastionSubnet"
}
variable "bastion_service_address_prefixes" {
  default = ["10.0.101.0/27"]
}
variable "bastion_subnet_name" {
  type = string 
  default = "bastionsubnet"
}

variable "bastion_subnet_address" {
  type = list[string]
  default = ["10.0.100.0/24"]
}
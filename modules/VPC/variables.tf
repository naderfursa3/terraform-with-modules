variable "vpc_name" {
    type = string
    description = "The Name Of the VPC"
}

variable "vpc_cidr_block" {
  type = string
  description = "VPC CIDR Block"
}

variable "subnet_cidr_block" {
  type = string
  description = "Public Subnet CIDR Block"
}



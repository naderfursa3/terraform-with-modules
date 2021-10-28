provider "aws" {
  region = "eu-west-1"
}

module "vpc" {
  source = "../modules/VPC/"

  vpc_name = "finance-vpc"
  vpc_cidr_block = "10.30.0.0/16"
  subnet_cidr_block = "10.30.30.0/24"
}


module "accounting" {
  source = "../modules/Instances"

  instance_name_tag = "finance_acconting"
  instance_ami = "ami-05cd35b907b4ffe77"
  instance_type = "t3.large"
  availability_zone = "eu-west-1c"
}

output "instance_id" {
  value = module.accounting.instance_id
}

output "instance_public_ip" {
  value = module.accounting.instance_public_ip
}

output "instance_private_ip" {
  value = module.accounting.instance_private_ip
}



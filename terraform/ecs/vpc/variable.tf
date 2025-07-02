variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
}

variable "vpc_cidr" {}
variable "vpc_name" {}

variable "public_subnet_a_cidr" {}
variable "public_subnet_b_cidr" {}

variable "availability_zone_a" {}
variable "availability_zone_b" {}

variable "public_subnet_a_name" {}
variable "public_subnet_b_name" {}

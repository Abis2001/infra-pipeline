variable "cidr_block" {
    description = "The CIDR block for the VPC"
    type        = string
}

variable "env" {
    description = "The environment tag for the VPC"
    type        = string
}

variable "subnet_cidr_block" {
    description = "The CIDR block for the default subnet"
    type        = string
}

variable "availability_zone" {
    description = "The availability zone for the default subnet"
    type        = string
}
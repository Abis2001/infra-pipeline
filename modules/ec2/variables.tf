variable "ami_id" {
    description = "The AMI ID to use for the EC2 instance"
    type        = string        
  
}

variable "instance_type" {
    description = "The instance type to use for the EC2 instance"
    type        = string
}

variable "subnet_id" {
    description = "The subnet ID to deploy the EC2 instance in"
    type        = string
}

variable "count" {
    description = "The number of EC2 instances to create"
    type        = number
}

variable "env" {
    description = "The environment tag for the EC2 instance"
    type        = string
}
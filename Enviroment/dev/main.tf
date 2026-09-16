module "vpc" {
    source              = "../../modules/vpc"
    cidr_block          = "10.0.0.0/16"
    subnet_cidr_block   = "10.0.1.0/24"
    availability_zone   = "{var.aws_region}a"
    env                 = "dev"
  
}

module "ec2" {
    source                = "../../modules/ec2"
    ami_id                = "ami-08188a5a4dfdbd573"
    instance_type         = "t3.micro"
    subnet_id             = module.vpc.subnet_id
    count                 = 1
    env                   = "dev"
}
resource "aws_default_vpc" "my-vpc" {
    cidr_block = var.cidr_block

  tags = {
    Name = "${var.env}-default-vpc"
    Env = var.env
  }
}

resource "aws_default_subnet" "my-subnet" {
  availability_zone = var.availability_zone
  cidr_block       = var.subnet_cidr_block
  vpc_id           = aws_default_vpc.my-vpc.id

  tags = {
    Name = "${var.env}-default-subnet" 
  }
}

output "subnet_id" {
  value = aws_default_subnet.my-subnet.id
}
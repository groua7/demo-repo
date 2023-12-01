# Define provider (AWS in this case)
provider "aws" {
  region = "us-east-1" # Set your desired region
}

# Define VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16" # Set your desired CIDR block
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "my_vpc"
  }
}

# Define public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24" # Set your desired CIDR block for the subnet
  availability_zone       = "us-east-1a"   # Set your desired availability zone

  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet"
  }
}

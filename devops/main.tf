# Terraform Settings Block
terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0" # Optional but recommended in production
    }
  }
}


# Provider Block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}


/*# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-03a6eaae9938c858c"
  instance_type = "t2.micro"
}*/

/*
# this resource will create an IAM user in AWS
resource "aws_iam_user" "example" {
count = length(var.user_names)
name = var.user_names[count.index]
}


variable "user_names" {
  type = list(string)
  default = ["Degbe", "Able", "Engineer",  "Devops_user","Admin"]
}


#to list the id of all users created
output "user_names" {
  value = aws_iam_user.example[*].arn
}



#to list the id of the 1st user created
output "user_names" {
  value = aws_iam_user.example[0].arn
}*/


#this is a comment for pvc resource
# Define provider (AWS in this case)

# Define VPC
resource "aws_vpc" "Engineer-vpc" {
  cidr_block = "10.0.0.0/16" # Set your desired CIDR block
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "Engineer-vpc"
  }
}

# Define public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.Engineer-vpc.id
  cidr_block              = "10.0.0.0/16"
  availability_zone       = "us-east-1a"  

  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet"
  }
}

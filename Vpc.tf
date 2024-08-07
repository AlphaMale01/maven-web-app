provider "aws" {
    region = "us-east-1"
    access_key = "AKIA57RUZG7LXA2OKCJ3"
    secret_key  = "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"  
}
# 1. create vpc
resource "aws_vpc" "prod_vpc" {
  cidr_block = "192.168.0.0/20"
  tags = {
    Name = "production"
  }
}

# 4. create a subnet

resource "aws_subnet" "subnet-private1" {
  vpc_id            =  aws_vpc.prod_vpc.id
  cidr_block        = "192.168.4.0/23"
  availability_zone =  "us-east-1a"
  tags = {
    Name = "prod-subnet-private1"
  }
}

resource "aws_subnet" "subnet-private2" {
  vpc_id            =  aws_vpc.prod_vpc.id
  cidr_block        = "192.168.8.0/23"
  availability_zone =  "us-east-1a"
  tags = {
    Name = "prod-subnet-private2"
  }
}

resource "aws_subnet" "subnet-public" {
  vpc_id            =  aws_vpc.prod_vpc.id
  cidr_block        = "192.168.0.0/23"
  availability_zone =  "us-east-1a"
  tags = {
    Name = "prod-subnet-public"
  }
}

resource "aws_vpc" "environment-test-1" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
//  tags {
//    Name = "terraform-aws-vpc-test-1"
//  }
}

resource "aws_subnet" "subnet1" {
  cidr_block        = cidrsubnet(aws_vpc.environment-test-1.cidr_block, 3, 1)
  vpc_id            = aws_vpc.environment-test-1.id
  availability_zone = "eu-central-1a"
}

resource "aws_subnet" "subnet2" {
  cidr_block        = cidrsubnet(aws_vpc.environment-test-1.cidr_block, 2, 2)
  vpc_id            = aws_vpc.environment-test-1.id
  availability_zone = "eu-central-1b"
}

resource "aws_security_group" "subnetsecurity" {
  vpc_id            = aws_vpc.environment-test-1.id

  ingress {
    cidr_blocks = [
      aws_vpc.environment-test-1.cidr_block
    ]

    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
  }
}
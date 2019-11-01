resource "aws_vpc" "environment-test-1" {
  cidr_block           = "10.0.0.0/24"
  enable_dns_hostnames = true
  enable_dns_support   = true
//  tags {
//    Name = "terraform-aws-vpc-test-1"
//  }
}
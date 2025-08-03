resource "aws_vpc" "vpc_fiap" {
  cidr_block           = var.cdr_vpc
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = var.tags
}

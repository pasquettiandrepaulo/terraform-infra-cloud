resource "aws_subnet" "subnet_public" {
  count = 3
  #vpc_id     = aws_vpc.main.id vpc default já criada
  vpc_id                  = aws_vpc.vpc_fiap.id                                     # apontamento de recurso diretametne da vpc
  cidr_block              = cidrsubnet(aws_vpc.vpc_fiap.cidr_block, 4, count.index) #  apontamento de recurso diretametne da vpc
  map_public_ip_on_launch = true
  availability_zone       = ["us-east-1a", "us-east-1b", "us-east-1c"][count.index]
  tags                    = var.tags
}

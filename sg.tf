resource "aws_security_group" "sg" {
  name        = "security-group-${var.projectName}"
  description = "Usado para expor services na internet"
  vpc_id      = aws_vpc.vpc_fiap.id
  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    #cidr_block  = ["0.0.0.0/0"]
  }

  egress {
    description = "All"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    #cidr_block  = ["0.0.0.0/0"]
  }
}

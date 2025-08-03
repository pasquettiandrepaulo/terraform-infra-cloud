variable "projectName" {
  default = "fiap-aula-terraform-infra"
}

variable "region_default" {
  default = "us-east-1"
}

variable "cdr_vpc" {
  default = "10.0.0.0/16"
}

variable "tags" {
  default = {
    Name = "fiap-terraform-aula-subnets"
    School = "FIAP",
    Envirnoment = "Develop",
    Year = "25"
  }
}

variable "instance_type" {
  default = "t3.medium"
}

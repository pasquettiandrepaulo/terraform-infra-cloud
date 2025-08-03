#terraform {
#  backend "s3" {
#    bucket = "fiap-aula-terraform-infra"
#    key    = "terraform-infra/terraform.tfstate"
#    region = "us-east-1"
#  }
#}

terraform {
  cloud {
    organization = "pasquettiandre"
    workspaces {
      name = "terraform-infra-cloud"
    }
  }
}

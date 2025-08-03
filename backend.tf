terraform {
  backend "s3" {
    bucket = "fiap-aula-terraform-infra"
    key    = "terraform-infra/terraform.tfstate"
    region = "us-east-1"
  }
}

terraform {
  backend "s3" {
    bucket         = "root-prd-terraform-state"
    key            = "terraform/tfstate/iam-prod.tfstate"
    region         = "eu-west-1"
  }
}

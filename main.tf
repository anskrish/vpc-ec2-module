provider "aws" {
  version = "~> 2.48"
  region = var.region
}
terraform {
  required_version = "= 0.12.20"
  backend "s3" {
    bucket = "es-sandbox-test"
    key    = "innominds/scenario1-module-dev/terraform.tfstate"
    region = "us-west-2"
  }
}

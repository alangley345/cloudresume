#specific provider
provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

#define location of state file
terraform {
  backend "s3" {
    bucket = "myterraformcode"
    key    = "cloudresume-frontend/terraform.tfstate"
    region = "us-east-2"
  }
}
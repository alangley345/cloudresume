#specific provider
provider "aws" {
  region = "us-east-1"
}

provider "github" {
}

#define location of state file
terraform {
  backend "s3" {
    bucket = "myterraformcode"
    key    = "prod/cloudresume.tfstate"
    region = "us-east-1"
  }

    required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}
locals {
  prefix = "${terraform.workspace}-${var.prefix}"
  common_tags = {
    ManagedBy   = "Terraform"
    Department  = "education",
    Provider    = "PucMinas",
    Owner       = "DevOps Team"
    Billing     = "Personal"
    Environment = terraform.workspace
    UserEmail   = "cesarabruschetta@gmail.com"
  }
}

terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.26.0"
    }
  }

  backend "s3" {
    profile = "terraform"
    bucket  = "dev-puc-artefact-643626749185-us-east-1"
    key     = "state/devops/atividade01.tfstate"
    region  = "us-east-1"
    encrypt = true
  }

}

provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}


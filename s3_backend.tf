terraform {

  backend "s3" {
    bucket         = "glowing-memory-tf-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "glowing-memory-backend"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }


}

provider "aws" {
  region                   = var.region
  shared_credentials_files = ["~/.aws/credentials"]
  #profile                  = "terraform-jenkins"
  shared_config_files      = ["~/.aws/config"]
}

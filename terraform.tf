terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.9"
    }
  }
}

provider "aws" {
  region  = var.region
  profile = var.aws_cli_profile != "" ? var.aws_cli_profile : "default"
}

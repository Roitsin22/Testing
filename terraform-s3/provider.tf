terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  backend "s3" {      #here state file send in s3 bucket
   bucket = "terraform-backup23"  #Bucket name
   key    = "Terraform/terraform.tfstate"  #File Name
   region = "us-east-2"
 }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-2"
  #profile = "default"
}


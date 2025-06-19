terraform {
  backend "s3" {
    bucket         = "redditbucket982"
    region         = "us-east-1"
    key            = "End-to-End-Kubernetes-DevSecOps-Tetris-Project/Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
  required_version = ">= 1.1.9, < 2.0.0"
  required_providers {
    aws = {
      version = "~> 5.52.0"
      source  = "hashicorp/aws"
    }
  }
}

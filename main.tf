
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web_server" {
  ami           = "ami-REPLACE-WITH-VALID-AMI"
  instance_type = "t3.micro"

  tags = {
    Name        = "Terraform-Web-Server"
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}

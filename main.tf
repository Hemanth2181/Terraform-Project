
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
  region = "us-east-1c"
}

resource "aws_instance" "web_server" {
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"

  tags = {
    Name        = "Terraform-Web-Server"
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}

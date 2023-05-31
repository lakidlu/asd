provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0e9181a3fc2e8aa36"
  instance_type = "t3.micro"
}

terraform {
  backend "s3" {
    bucket         = "terraform-up-and-running-state-lakidlu"
    key            = "workspaces-example/terraform.tfstate"
    region         = "eu-north-1"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}
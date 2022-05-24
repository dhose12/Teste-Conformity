terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "${var.ami ["us-west-2-amazon linux 2"]}"
  instance_type = "${variable.instance_type.micro}"
  key_name = "terraform"

  tags = {
    Name = "InstaceExampleConformity"
  }
  vpc_security_group_ids = [ "aws_security_group.aceso_geral.id" ]
}



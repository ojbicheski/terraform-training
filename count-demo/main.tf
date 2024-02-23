provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "db" {
  ami = "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"
  count = 3
}
provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "web" {
  ami = "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"

  tags = {
    Name = "Web Server"
  }

  depends_on = [ aws_instance.db ]
}

resource "aws_instance" "db" {
  ami = "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"

  tags = {
    Name = "DB Server"
  }
}

data "aws_instance" "dbsearch" {
  filter {
    name = "tag:Name"
    values = [ "DB Server" ]
  }
}

output "dbservers" {
  value = data.aws_instance.dbsearch.availability_zone
}
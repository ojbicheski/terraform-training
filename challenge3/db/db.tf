
resource "aws_instance" "db" {
  ami             = "ami-02ca28e7c7b8f8be1"
  instance_type   = "t2.micro"

  tags = {
    Name = "DB Server"
  }
}

output "PrivateIP" {
  value = aws_instance.db.private_ip
}

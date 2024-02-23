 variable "ec2name" {
   type = string
 }

resource "aws_instance" "ec2" {
  ami = "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"

  tags = {
    Name = var.ec2name
  }
}

output "instance_id" {
  value = aws_instance.ec2.id
}
provider "aws" {
  region = "us-east-2"
}

resource "aws_db_instance" "myRDS" {
  db_name = "myDB"
  identifier = "my-first-rds"
  instance_class = "db.t3.micro"
  engine = "mariadb"
  engine_version = ""
  username = "orlei"
  password = "password123"
  port = 3306
  allocated_storage = 20
  skip_final_snapshot = true
  publicly_accessible = true
}
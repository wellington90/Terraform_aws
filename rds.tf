resource "aws_db_subnet_group" "my_db_subnet_group" {
  name        = "my_db_subnet_group"
  subnet_ids  = [
    aws_subnet.subnet_1.id,
    aws_subnet.subnet_2.id
  ]

  tags = {
    Name = "my_db_subnet_group"
  }
}

resource "aws_db_instance" "my_db_instance" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  identifier           = "my_db_instance"
  name                 = "my_db_instance"
  username             = "admin"
  password             = "password"
  db_subnet_group_name = aws_db_subnet_group.my_db_subnet_group.name

  vpc_security_group_ids = [
    aws_security_group.my_security_group.id
  ]

  tags = {
    Name = "my_db_instance"
  }
}

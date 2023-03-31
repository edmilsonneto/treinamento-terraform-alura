resource "aws_db_instance" "rds-us-east-2" {
  provider             = aws.us-east-2
  allocated_storage    = 10
  name                 = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "root"
  password             = "root1234"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  vpc_security_group_ids = ["${aws_security_group.ssh-us-east-2.id}"]
}

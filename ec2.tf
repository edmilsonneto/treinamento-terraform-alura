resource "aws_instance" "server-01" {
  ami           = var.amis["sa-east-1"]
  instance_type = "t2.micro"
  key_name      = "terraform-adm"
  tags = {
    Name = "server-01"
  }
  vpc_security_group_ids = ["${aws_security_group.ssh.id}"]
}

resource "aws_instance" "server-02" {
  ami           = var.amis["sa-east-1"]
  instance_type = "t2.micro"
  key_name      = "terraform-adm"
  tags = {
    Name = "server-02"
  }
  vpc_security_group_ids = ["${aws_security_group.ssh.id}"]
  depends_on = ["aws_s3_bucket.server-02"]
}

resource "aws_instance" "server-03" {
  ami           = var.amis["sa-east-1"]
  instance_type = "t2.micro"
  key_name      = "terraform-adm"
  tags = {
    Name = "server-03"
  }
  vpc_security_group_ids = ["${aws_security_group.ssh.id}"]
}

resource "aws_instance" "server-04" {
  provider = aws.us-east-2
  ami           = var.amis["us-east-2"]
  instance_type = "t2.micro"
  key_name      = "terraform-adm"
  tags = {
    Name = "server-04"
  }
  vpc_security_group_ids = ["${aws_security_group.ssh-us-east-2.id}"]
  depends_on = [
    aws_db_instance.rds-us-east-2
  ]
}
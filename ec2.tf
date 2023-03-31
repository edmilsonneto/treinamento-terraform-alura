resource "aws_instance" "dev" {
  count         = 3
  ami           = "ami-007855ac798b5175e"
  instance_type = "t2.micro"
  key_name      = "terraform-adm"
  tags = {
    Name = "dev${count.index}"
  }
  vpc_security_group_ids = ["sg-0dd76dbddc200b15d", "${aws_security_group.ssh.id}"]
}

resource "aws_instance" "dev4" {
  ami           = "ami-007855ac798b5175e"
  instance_type = "t2.micro"
  key_name      = "terraform-adm"
  tags = {
    Name = "dev4"
  }
  vpc_security_group_ids = ["sg-0dd76dbddc200b15d", "${aws_security_group.ssh.id}"]
  depends_on = ["aws_s3_bucket.dev4"]
}

resource "aws_instance" "dev5" {
  ami           = "ami-007855ac798b5175e"
  instance_type = "t2.micro"
  key_name      = "terraform-adm"
  tags = {
    Name = "dev5"
  }
  vpc_security_group_ids = ["sg-0dd76dbddc200b15d", "${aws_security_group.ssh.id}"]
}

resource "aws_instance" "dev6" {
  provider = aws.us-east-2
  ami           = "ami-0a695f0d95cefc163"
  instance_type = "t2.micro"
  key_name      = "terraform-adm"
  tags = {
    Name = "dev6"
  }
  vpc_security_group_ids = ["${aws_security_group.ssh-us-east-2.id}"]
  depends_on = [
    aws_db_instance.rds-us-east-2
  ]
}
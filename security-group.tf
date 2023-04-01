resource "aws_security_group" "ssh" {
  name        = "ssh"
  description = "ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  tags = {
    Name = "ssh"
  }
}

resource "aws_security_group" "ssh-us-east-2" {
  provider    = aws.us-east-2
  name        = "ssh"
  description = "ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  tags = {
    Name = "ssh"
  }
}

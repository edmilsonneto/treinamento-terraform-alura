resource "aws_s3_bucket" "dev4" {
  bucket = "bk-dev4"
  acl    = "private"

  tags = {
    Name = "dev4"
  }
}
resource "aws_s3_bucket" "server-02" {
  bucket = "bk-server-02"
  acl    = "private"

  tags = {
    Name = "server-02"
  }
}
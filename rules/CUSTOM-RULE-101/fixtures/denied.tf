resource "aws_s3_bucket" "denied_s3_bucket" {
  bucket = "denied_s3_bucket_name"
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.denied_s3_bucket.id
  acl    = "public-read"
}
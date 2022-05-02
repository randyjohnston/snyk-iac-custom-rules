resource "aws_s3_bucket" "denied_s3_bucket" {
  bucket = "denied_bucket_name"
  acl    = "public-read"
}

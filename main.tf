
resource "aws_s3_bucket" "mybucket" {
  bucket = "bucket-for-hosting-1122334455"
}

resource "aws_s3_bucket_public_access_block" "mybucket_block" {
  bucket = aws_s3_bucket.mybucket.id
  block_public_acls   = false
  ignore_public_acls  = false
  block_public_policy = false
  restrict_public_buckets = false
}

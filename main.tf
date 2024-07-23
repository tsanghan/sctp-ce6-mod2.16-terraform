resource "random_id" "server" {
  byte_length = 4
}

resource "aws_s3_bucket" "this" {
  bucket = "${local.bucket_name}-${local.random.Name}"
  tags   = local.common_tags
}
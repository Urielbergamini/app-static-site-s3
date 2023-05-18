# RESOURCE: S3 BUCKET (INFRA)

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_versioning" "bucket-versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_acl" "bucket-acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "public-read"
}

resource "aws_s3_bucket_website_configuration" "bucket-website-configuration" {
  bucket = aws_s3_bucket.bucket.id

  index_document {
    suffix = var.s3_index_document
  }

  error_document {
    key = var.s3_error_document
  }
}
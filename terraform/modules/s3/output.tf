resource "aws_s3_bucket_acl" "bucket-acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "public-read"
}

output "aws_s3_bucket_website_endpoint" {
  value = "http://${var.website_endpoint == "true" ? aws_s3_bucket_website_configuration.bucket-website-configuration.website_endpoint : ""}"
}

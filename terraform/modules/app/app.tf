resource "aws_s3_object" "bucket-objects" {
  bucket       = aws_s3_bucket.bucket.id
  for_each     = fileset("../app/", "*")
  key          = each.value
  source       = "../app/${each.value}"
  acl          = "public-read"
  content_type = "text/html"
  etag         = md5(file("../app/${each.value}"))
}
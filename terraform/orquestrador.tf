module "S3" {
    source = "./modules/s3"
    s3_bucket_name = "${var.s3_name}"
}

module "app" {
    source = "./modules/app"
    s3_bucket_id = "$(module.s3.s3_bucket_id)"
}
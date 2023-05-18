module "S3"{
    source = "./modules/S3"
    s3_bucket_name = "${var.s3_name}"
}

module "app" {
    source = "./modules/app"
    s3_bucket_id = "$(module.S3.s3_bucket_id)"
}
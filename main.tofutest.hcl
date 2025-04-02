run "verify_s3_bucket" {
  command = plan

  assert {
    condition     = aws_s3_bucket.iac-bucket.bucket == "iac-main-bucket-2"
    error_message = "S3 bucket name should be iac-main-bucket-2"
  }
}

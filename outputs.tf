# ------------------------------------------------------------------------------
# Output
# ------------------------------------------------------------------------------

# output the bucket name 
output "bucket" {
  value = aws_s3_bucket.logs.bucket
}

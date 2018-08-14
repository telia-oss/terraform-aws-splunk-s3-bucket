module "log-bucket" {
  source  = "telia-oss/splunk-s3-bucket/aws"
  version = "1.0.0"

  read_access_account = "123456789"
  log_bucket_name = "shared-log-bucket"
  aws_organization_id = "o-your-organization-id"
}
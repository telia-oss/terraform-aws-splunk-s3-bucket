provider "aws" {
  version = "1.30.0"
  region  = "eu-west-1"
}

module "log-bucket" {
  source  = "../.."
  version = "1.0.0"

  bucket = "some-bucket"
  read_access_account = "123456789"
  aws_organization_id = "o-your-organization-id"
}
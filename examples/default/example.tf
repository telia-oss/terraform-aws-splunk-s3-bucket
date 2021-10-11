provider "aws" {
  region = "eu-west-1"
}

module "log-bucket" {
  source = "../.."


  bucket              = "some-bucket"
  read_access_account = "123456789"
  aws_organization_id = "o-your-organization-id"
}
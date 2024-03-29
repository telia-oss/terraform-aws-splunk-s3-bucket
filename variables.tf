variable "bucket" {
  description = "The name of the bucket. If omitted, Terraform will assign a random, unique name."
}

variable "expiration_days" {
  description = "The number of days log files will stay in the bucket"
  default     = "7"
}

variable "read_access_account" {
  description = "The id of an account given read access to read object buckets "
}

variable "aws_organization_id" {
  description = "All member accounts of this organization can Put objects to the bucket"
}

variable "sqs_visibility_timeout_seconds" {
  description = "Visibility timeout for the SQS queue"
  default     = "600"
}

variable "sqs_message_retention_seconds" {
  description = "Message retention for the SQS queue"
  default     = "1209600"
}

variable "sqs_receive_wait_time_seconds" {
  description = "Receive wait time for the SQS queue"
  default     = "20"
}

variable "tags" {
  type    = map(any)
  default = {}
}

variable "amz_access_log_accounts" {
  default = {
    eu-west-1 = 156460612806
  }

  type = map(any)
}

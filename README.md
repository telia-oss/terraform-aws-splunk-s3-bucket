# S3 bucket and support infrastructure for Splunk SQS based S3 ingestion.

This module creates an S3 bucket and other components (SNS, SQS, IAM) needed for  Splunk to ingest objects with [SQS Based S3 ingestion](http://docs.splunk.com/Documentation/AddOns/released/AWS/SQS-basedS3)

# Notes 


* All accounts in the AWS organization given by the aws_organization_id can put objects in the created bucket
* One dedicated account has read access to the bucket. This will typically be the AWS account hosting Splunk
* A separate bucket for S3 Access logs will be created
* The module provisions SQS and SNS resources and required policies. You can override attributes of the SQS queue can by changing variables. 
* The bucket is created with a lifecycle policy that will, by default, remove items after seven days. Splunk should be able to ingest the files in that period. 

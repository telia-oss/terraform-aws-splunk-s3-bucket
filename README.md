# S3 bucket and support infrastructure for Splunk SQS based S3 ingestion.

This module creates an S3 bucket and other components (SNS, SQS, IAM) needed for  Splunk to ingest objects with [SQS Based S3 ingestion](http://docs.splunk.com/Documentation/AddOns/released/AWS/SQS-basedS3)

It requires the Splunk environment to be hosed in AWS. 

# Notes 

* All accounts in the AWS organization given by the aws_organization_id can put objects in the created bucket
* One dedicated account has read access to the bucket. This will typically be the AWS account hosting Splunk
* A separate bucket for S3 Access logs will be created
* The module provisions SQS and SNS resources and required policies. You can override attributes of the SQS queue by changing variables. 
* The bucket is created with a default and customizable lifecycle policy that removes items after seven days.  

# Permissions

The bucket created by this module wil also allow Elastic Load Balancers in the same region to write it's access 
logs to the bucket 

The bucket policy also allows the AWS ConfigService to write put objects to the bucket. 
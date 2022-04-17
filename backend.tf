terraform {
  backend "s3" {
    bucket = "sara-bucket-ter"
    key    = "sarastate.tf"
    region = "us-east-1"
    dynamodb_table = "sara-dynamodb"
    profile = "default"
  }
}
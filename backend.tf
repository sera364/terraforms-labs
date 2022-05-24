terraform {
  backend "s3" {
    bucket = "terraform-jenkins-96"
    key    = "sarastate.tf"
    region = "us-east-2"
    profile = "default"
  }
}

terraform {
  backend "s3" {
    bucket = "sara-jenkins-lab"
    key    = "sarastate.tf"
    region = "us-west-2"
    profile = "default"
  }
}

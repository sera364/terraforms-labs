terraform {
  backend "s3" {
    bucket = "sara-jenkins-lab-97"
    key    = "sarastate.tf"
    region = "us-east-1"
    profile = "default"
  }
}

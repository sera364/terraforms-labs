terraform {
  backend "s3" {
    bucket = "sara-jenkins-lab-97"
    key    = "sarastate.tf"
    region = "us-west-2"
    profile = "default"
  }
}

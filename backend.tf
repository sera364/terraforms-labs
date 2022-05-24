terraform {
  backend "s3" {
    bucket = "terraform-jenkins-97"
    key    = "sarastate.tf"
    region = "eu-central-1"
    profile = "default"
  }
}

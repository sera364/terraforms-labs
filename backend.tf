terraform {
  backend "s3" {
    bucket = "terraform-jenkins-96"
    key    = "sarastate.tf"
    region = "eu-central-2"
    profile = "default"
  }
}

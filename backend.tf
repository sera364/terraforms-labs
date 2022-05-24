terraform {
  backend "s3" {
    bucket = "jenkins-terraform-97"
    key    = "sarastate.tf"
    region = "eu-central-1"
    profile = "default"
  }
}

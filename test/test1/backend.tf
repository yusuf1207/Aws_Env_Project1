terraform {
  backend "s3" {
    bucket = "terraform-2022-backend-do-not-delete"
    key    = "test1/backend/terraform.tfstate"
    region = "us-west-1"
  }
}
terraform {
  backend "s3" {
    bucket         = "terraform-2022-backend-do-not-delete"
    key            = "test2/backend/terraform.tfstate" # "key" = The path to the state file inside the bucket
    region         = "us-west-1"
    dynamodb_table = "terraform-2022-lock"
  }
}
## Terraform State Lock
# Terraform State Lock prevents from the accidental Apply or Destory command or State change.
# It will make sure one apply or destory at the time.
# terraform State Lock uses dynamoDB table to lock every single executions.
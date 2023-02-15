terraform {
  backend "s3" {
    bucket         = "alfa-uw1-tf-bucket"
    key            = "vpc-backend/terraform.tfstate"
    region         = "us-west-1" 
    dynamodb_table = "Porject_alfa"
  }
}

module "ec2" {
  source         = "../../modules/ec2" # Local module needs an absolute path to the Child Module
  ami            = "ami-0036b4598ccd42565"
  instance_type  = "t2.micro"
  env            = "dev"
}

module "s3" {
  source = "../../modules/s3"
  env    = "dev"
}

# Root Module = is a place where you run Terraform Commands, call Child modules
# Child Module = is a place where you develop your resource codes
# cp -avP dev/* qa >>> copy <<<
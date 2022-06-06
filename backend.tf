terraform {
  backend "s3" {
    bucket = "eknath-terraform-backend"
    key    = "terraform_test/qa.tfstate"
    region = "ap-south-1"
  }
}

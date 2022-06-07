terraform {
  backend "s3" {
    bucket = "eknath-terraform-backend"
    key    = "terraform_test/dev.tfstate"
    region = "ap-south-1"
  }
}

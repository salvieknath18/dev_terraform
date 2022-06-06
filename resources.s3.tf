resource "aws_s3_bucket" "tf_bucket1" {
  bucket = "eknath-dev-bucket-terraform"
  acl    = "public-read"
  policy = jsonencode({
    Version : "2008-10-17",
    Statement : [{
      Sid : "AllowPublicRead",
      Effect : "Allow",
      Principal : { "AWS" : "*" },
      Action : ["s3:GetObject"],
      Resource : ["arn:aws:s3:::eknath-dev-bucket-terraform/*"]
    }]
  })
  website {
    index_document = "index.html"
  }
}

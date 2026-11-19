provider "aws" {
  region = "ap-southeast-5"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "nextwork-unique-bucket-annur-221201221203060671" # Make sure this bucket name is globally unique by typing a long random number
}

resource "aws_s3_bucket_public_access_block" "my_bucket_public_access_block" {
  bucket = aws_s3_bucket.my_bucket.id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}
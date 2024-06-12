provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "developer-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "4970679a-2711-4f9c-8e30-4726c2062273"
    git_commit           = "804b359a146f13b9ff6d1cb64a484de52e5a8f62"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-06-12 16:18:14"
    git_last_modified_by = "arthur.lutz@zenika.com"
    git_modifiers        = "arthur.lutz"
    git_org              = "arthurzenika"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}


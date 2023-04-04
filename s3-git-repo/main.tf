variable "bucket_name" {
  type = string
}
variable "owner" {
  type = string
}

provider "aws" {
}
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  tags = {
      Name= var.bucket_name
      Service = "s3"
      Team = var.owner
  }
}

output regional_domain_name {
  value = aws_s3_bucket.bucket.bucket_regional_domain_name
}

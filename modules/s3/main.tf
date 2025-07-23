terraform {
  backend "s3" {}
}

resource "aws_s3_bucket" "this" {
  bucket        = var.bucket_name
  force_destroy = var.force_destroy

  tags          = var.tags
}

resource "aws_s3_bucket_versioning" "this" {
  bucket        = aws_s3_bucket.this.id

  versioning_configuration {
    status      = var.enable_versioning ? "Enabled" : "Suspended"
  }
}

#resource "aws_s3_bucket_lifecycle_configuration" "prevent_destroy_rule" {
#  count         = var.prevent_destroy ? 1 : 0
#  bucket        = aws_s3_bucket.this.id
#
#}

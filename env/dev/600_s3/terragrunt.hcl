include {
  path              = find_in_parent_folders("root.hcl")
}

terraform {
  source            = "../../../modules/s3"
}

inputs = {
  bucket_name       = "rabulfazov-test-bucket"
  enable_versioning = true
  force_destroy     = false
  prevent_destroy   = true

  tags = {
    Environment       = "dev"
    Owner             = "rabulfazov"
    Project           = "terragrunt-demo"
  }
}

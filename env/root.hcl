locals {
  region         = "eu-central-1"
  env            = "dev"
  s3_bucket      = "terragrunt-state-eu"
  dynamodb_table = "terragrunt-locks"
}

remote_state {
  backend = "s3"
  config = {
    bucket         = local.s3_bucket
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = local.region
    dynamodb_table = local.dynamodb_table
    encrypt        = true
  }
}

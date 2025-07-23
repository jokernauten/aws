include {
  path              = find_in_parent_folders("root.hcl")
}

terraform {
  source            = "../../modules/vpc"
}

inputs = {
  vpc_name          = "dev-vpc"
  cidr_block        = "10.1.0.0/16"
  azs               = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
  private_subnets   = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
  public_subnets    = ["10.1.101.0/24", "10.1.102.0/24", "10.1.103.0/24"]

  tags = {
    Environment     = "dev"
  }
}

terraform {
  source            = "../../modules/vpc"
}

inputs = {
  vpc_name          = "infra-vpc"
  cidr_block        = "10.0.0.0/16"
  azs               = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
  private_subnets   = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets    = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  tags = {
    Environment     = "infra"
    Owner           = "devops"
  }
}

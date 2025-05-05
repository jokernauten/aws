terraform {
  source            = "../../modules/eks"
}

inputs = {
  vpc_name          = "infra-vpc"        # must match VPC Name tag
  cluster_name      = "infra-eks"
  cluster_version   = "1.32"

  desired_capacity  = 2
  min_capacity      = 1
  max_capacity      = 3
  instance_type     = "t3.medium"
}

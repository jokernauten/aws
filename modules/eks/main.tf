data "aws_vpc" "selected" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_subnet_ids" "private" {
  vpc_id = data.aws_vpc.selected.id

  tags = {
    Type = "private"
  }
}

module "eks" {
  source                = "terraform-aws-modules/eks/aws"
  cluster_name          = var.cluster_name
  cluster_version       = var.cluster_version

  vpc_id                = data.aws_vpc.selected.id
  subnets               = data.aws_subnet_ids.private.ids

  node_groups = {
    default = {
      desired_capacity  = var.desired_capacity
      max_capacity      = var.max_capacity
      min_capacity      = var.min_capacity
      instance_type     = var.instance_type
    }
  }
}

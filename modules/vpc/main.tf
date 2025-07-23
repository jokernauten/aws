module "vpc" {
    source              = "terraform-aws-modules/vpc/aws"

    name                = var.name
    cidr                = var.cidr_block
    azs                 = var.azs
    private_subnets     = var.private_subnets
    public_subnets      = var.public_subnets

    enable_nat_gateway  = true
    single_nat_gateway  = true

    private_subnet_tags = var.private_subnet_tags
    public_subnet_tags  = var.public_subnet_tags
    tags                = var.tags
}

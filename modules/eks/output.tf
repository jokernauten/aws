output "vpc_id" {
  value = data.aws_vpc.selected.id
}

output "subnet_ids" {
  value = data.aws_subnet_ids.private.ids
}

output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "kubeconfig" {
  value = module.eks.kubeconfig
  sensitive = true
}

output "vpc_network" {
  description = "VPC network"
  value       = module.network.network_self_link
}

output "subnetworks" {
  description = "Subnets"
  value       = module.network.subnets_self_link
}

output "gke_cluster_endpoint" {
  description = "GKE cluster endpoint"
  value       = module.gke.cluster_endpoint
}

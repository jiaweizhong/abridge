# exposed outputs for network module
output "network_self_link" {
  description = "VPC self-link"
  value       = google_compute_network.vpc_network.self_link
}

output "subnets_self_link" {
  description = "Subnet self-link"
  value       = { for k, s in google_compute_subnetwork.subnets : k => s.self_link }
}

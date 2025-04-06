# exposed outputs for GKE module
output "cluster_endpoint" {
  description = "GKE endpoint"
  value       = google_container_cluster.primary.endpoint
}

output "cluster_name" {
  description = "GKE cluster name"
  value       = google_container_cluster.primary.name
}

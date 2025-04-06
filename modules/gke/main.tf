# GKE config
resource "google_container_cluster" "primary" {
  name               = var.cluster_name
  location           = var.region
  network            = var.network
  subnetwork         = var.subnetwork
  remove_default_node_pool = true
  initial_node_count = 1
}

resource "google_container_node_pool" "primary_nodes" {
  count    = length(var.node_pools)
  name     = var.node_pools[count.index].name
  cluster  = google_container_cluster.primary.name
  location = var.region

  node_config {
    machine_type = var.node_pools[count.index].machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
  
  # GKE auto scaling setting
  autoscaling {
    min_node_count = var.node_pools[count.index].min_count
    max_node_count = var.node_pools[count.index].max_count
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }
}

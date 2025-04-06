# VPC & subnet config
resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  auto_create_subnetworks = false
  routing_mode            = "GLOBAL"
}

resource "google_compute_subnetwork" "subnets" {
  for_each    = var.subnets
  name        = each.key
  ip_cidr_range = each.value.cidr
  region      = var.region
  network     = google_compute_network.vpc_network.id
}

provider "google" {
  project = var.project
  region  = var.region
}

module "network" {
  source       = "./modules/network"
  network_name = var.network_name
  subnets      = var.subnets
  region       = var.region
}

module "iam" {
  source           = "./modules/iam"
  service_accounts = var.service_accounts
  project          = var.project
}

module "gke" {
  source      = "./modules/gke"
  cluster_name = var.cluster_name
  region       = var.region
  network      = module.network.network_self_link
  # using 1 subnet of cluster
  subnetwork   = module.network.subnets_self_link["subnet-a"]  
  node_pools   = var.node_pools
}

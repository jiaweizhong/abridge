variable "cluster_name" {
  type        = string
  description = "GKE cluster name"
}

variable "region" {
  type        = string
  description = "GCP availability region"
}

variable "network" {
  type        = string
  description = "VPC self-link"
}

variable "subnetwork" {
  type        = string
  description = "Subnets self-link"
}

variable "node_pools" {
  type = list(object({
    name         = string
    machine_type = string
    min_count    = number
    max_count    = number
  }))
  description = "Node pool"
}

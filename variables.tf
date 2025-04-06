variable "project" {
  type        = string
  description = "GCP project ID"
}

variable "region" {
  type        = string
  description = "GCP project region"
}

variable "network_name" {
  type        = string
  description = "VPC name"
}

variable "subnets" {
  type = map(object({
    cidr = string
  }))
  description = "Subnet CIDR"
}

variable "service_accounts" {
  type = map(object({
    display_name = string
  }))
  description = "Service account"
}

variable "cluster_name" {
  type        = string
  description = "GKE cluster name"
}

variable "node_pools" {
  type = list(object({
    name         = string
    machine_type = string
    min_count    = number
    max_count    = number
  }))
  description = "GKE cluster nodepools"
}

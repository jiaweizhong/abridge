variable "network_name" {
  type        = string
  description = "VPC name"
}

variable "subnets" {
  type = map(object({
    cidr = string
  }))
  description = "Subnet config"
}

variable "region" {
  type        = string
  description = "Availability region"
}

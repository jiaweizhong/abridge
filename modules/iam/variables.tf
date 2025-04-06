variable "service_accounts" {
  type = map(object({
    display_name = string
  }))
  description = "Service account"
}

variable "project" {
  type        = string
  description = "GCP project ID"
}

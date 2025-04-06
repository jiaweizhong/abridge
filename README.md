## Overview
This Terraform project provisions a minimum viable GCP environment that includes:
- A custom VPC with configurable CIDR and subnets.
- Service accounts.
- A GKE cluster with configurable node pools and autoscaling.

The configuration follows GCP best practices for security and networking, and the modules are designed to be reusable.

## Prerequisites
- Terraform installed on your machine.
- A configured GCP account with the following APIs enabled:
  - Compute Engine API
  - Kubernetes Engine API
  - IAM API
- Authentication set up via:
  ```bash
  gcloud auth application-default login

## Testing & Validation

terraform init
terraform validate
terraform plan
terraform apply
terraform destroy

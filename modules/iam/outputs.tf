# exposed outputs for service accounts
output "service_account_emails" {
  description = "Service account emails"
  value       = { for k, sa in google_service_account.service_accounts : k => sa.email }
}

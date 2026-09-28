output "sa_name" {
  value = google_service_account.sa.account_id
}

output "sa_mail" {
  value = google_service_account.sa.email
}

resource "google_service_account" "sa" {
  account_id   = var.service_account_name
  display_name = var.sa_display_name
}

resource "google_project_iam_member" "member" {

    for_each = toset(
        var.role_names
    )
    project = var.project_id
    role = each.value
    member = "serviceAccount:${google_service_account.sa.email}"
}
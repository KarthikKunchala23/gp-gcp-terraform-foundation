locals {
  # If the user didn't provide a description, automatically generate one with the timestamp
  role_description = var.description != null ? var.description : "Created on ${timestamp()}"
}

resource "google_project_iam_custom_role" "custom_role" {
  role_id = var.role_id
  title = var.title
  description = local.role_description
  permissions = var.permissions
}
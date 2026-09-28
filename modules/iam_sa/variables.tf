variable "role_names" {
  description = "IAM Role names for the iam service account"
  type = set(string)
}

variable "service_account_name" {
  description = "Service Account name"
  type = string
}

variable "sa_display_name" {
  description = "SA Display Name"
  type = string
}

variable "project_id" {
  description = "project id of gcp"
  type = string
}
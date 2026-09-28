terraform {
  required_version = ">= 1.11.1"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "8.4.0" # Pinning provider version for consistency
    }
  }
  backend "gcs" {
    bucket                      = "gp-terraform-state-2398"
    prefix                      = "terraform/dev"
    impersonate_service_account = "terraform-executions@gp-project-508211.iam.gserviceaccount.com"
  }
}

provider "google" {
  project = "gp-project-508211"
  region  = "us-central1"
}

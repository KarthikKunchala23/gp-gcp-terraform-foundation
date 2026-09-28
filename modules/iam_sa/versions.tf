terraform {
    required_version = ">= 1.11.1"
    
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "8.4.0"
    }
  }
}
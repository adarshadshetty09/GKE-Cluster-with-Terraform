terraform {
  backend "gcs" {
    bucket = "<gs-bucket-name>"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = "<gcp-project-id>"
  region  = "us-central1"
}

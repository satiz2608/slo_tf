terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.44.1"
    }
  }
}

provider "google" {
  credentials = file(local.variables.credentials_file)

  project = local.variables.project
  region  = local.variables.region
  zone    = local.variables.zone
}
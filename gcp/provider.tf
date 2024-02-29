terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("sql101-415814-8a408cb1d321.json")

  project = "sql101-415814"
  region  = "us-central1"
  zone    = "us-central1-c"
}

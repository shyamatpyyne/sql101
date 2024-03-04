terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }
  }
}

variable "gcp_credentials_file" {
  type    = string
  default = ".credentials/sql101-415814-8a408cb1d321.json"
}

provider "google" {
  credentials = file(var.gcp_credentials_file)

  project = "sql101-415814"
  region  = "us-central1"
  zone    = "us-central1-c"
}
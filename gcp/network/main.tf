variable "vpc-name" {
    type = string
}

resource "google_compute_network" "nw1" {
  name = var.vpc-name
}

output "vpc" {
  value = google_compute_network.nw1
}
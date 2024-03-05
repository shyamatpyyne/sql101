variable "vpc" {
}

variable "cidr_allow_all" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
}

resource "google_compute_firewall" "ssh-rule" {
  name = "allow-ssh"
  network = var.vpc.name
  target_tags = [ "allow-ssh" ]
  source_ranges = var.cidr_allow_all

  allow {
    protocol = "tcp"
    ports = [ "22" ]
  }
}

resource "google_compute_firewall" "http-rule" {
  name = "allow-http"
  network = var.vpc.name
  target_tags = [ "allow-http" ]
  source_ranges = var.cidr_allow_all

  allow {
    protocol = "tcp"
    ports = [ "80" ]
  }
}
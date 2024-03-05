resource "google_compute_address" "static_ip" {
  name = "${var.server-name}-static-ip"
}

module "ssh_access" {
  source = "./ssh"
}
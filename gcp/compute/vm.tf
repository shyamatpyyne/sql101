resource "google_compute_instance" "vm-instance" {
  boot_disk {
    auto_delete = true
    device_name = "${var.server-name}-disk"

    initialize_params {
      image = var.machine-image
    }

    mode = "READ_WRITE"
  }

  can_ip_forward      = false
  deletion_protection = false
  enable_display      = false

  labels = {
    goog-ec-src = "vm_add-tf"
  }

  machine_type = var.machine-type
  name         = var.server-name

  network_interface {
    network = var.vpc.name

    access_config {
      nat_ip = google_compute_address.static_ip.address
    }
  }

  tags = var.server-tags
  zone = var.zone
}

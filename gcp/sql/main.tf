resource "google_sql_database" "database" {
  name     = var.database_name
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_database_instance" "instance" {
  name             = "${var.database_name}-${var.instance_name}"
  region           = var.region
  database_version = var.db_version
  
  settings {
    tier = var.db_tier
  }

  deletion_protection  = var.deletion_protection
}
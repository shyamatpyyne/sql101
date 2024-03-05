variable "database_name" {
  type = string
  description = "The name of the database."
  default = "sql101"
}

variable "instance_name" {
  type = string
  description = "The name of the database instance."
  default = "master"
}

variable "region" {
  type = string
  description = "The region for the database."
  default = "us-central1"
}

variable "db_version" {
  type = string
  description = "The database version."
  default = "MYSQL_8_0"
}

variable "db_tier" {
  default = "db-f1-micro"
}

variable "deletion_protection" {
  default = "false"
}
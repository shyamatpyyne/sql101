variable "server-name" {
  default = "mysql-client"
}

variable "machine-type" {
  default = "e2-small"
}

variable "machine-image" {
  type = string
  default = "projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20240229"
}

variable "zone" {
  default = "us-central1-a"
}

variable "server-tags" {
  type = list(string)
  default = [ "mysql-client", "http-server", "https-server", "allow-ssh" ]
}
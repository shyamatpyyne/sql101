module "mysql-server-vpc" {
  source = "./network"

  vpc-name = "mysql-server-vpc"
}

module "mysql-instance" {
  source = "./sql"
}
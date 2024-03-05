module "mysql-server-vpc" {
  source = "./network"

  vpc-name = "mysql-server-vpc"
}

module "mysql-instance" {
  source = "./sql"
}

module "compute-vm" {
  source = "./compute"

  vpc = module.mysql-server-vpc.vpc
}
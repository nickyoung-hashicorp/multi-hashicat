module "aws" {
  source = "./aws"
}

module "azure" {
  source = "./azure"
}

module "gcp" {
  source = "./gcp"
  project = var.gcp_project
}

variable "gcp_project" {}
module "aws" {
  source = "./aws"
}

module "azure" {
  source = "./azure"
}

module "gcp" {
  source = "./gcp"
  project = "p-hacomuho3vtnrwbz7q79tra2pdu3"
}
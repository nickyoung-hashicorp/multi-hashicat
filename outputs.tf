# AWS hashicat URL
output "aws_hashicat" {
    value = module.aws.catapp_url
}

# Azure hashicat URL
output "azure_hashicat" {
    value = module.azure.catapp_url
}

# GCP hashicat URL
output "gcp_hashicat" {
    value = module.gcp.catapp_url
}

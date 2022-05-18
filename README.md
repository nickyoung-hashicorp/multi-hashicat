# multi-hashicat for AWS, Azure, and GCP
Hashicat: A terraform built application for use in Hashicorp workshops

Includes "Meow World" website across all 3 major public cloud providers.

## Setup Credentials
AWS and Azure credentials are already sourced properly.  Configure and source Google Cloud credentials:
```sh
export TF_VAR_project=$INSTRUQT_GCP_PROJECT_GCP_PROJECT_PROJECT_ID
grep $INSTRUQT_GCP_PROJECT_GCP_PROJECT_PROJECT_ID /root/.bashrc || echo "export TF_VAR_project=\"$INSTRUQT_GCP_PROJECT_GCP_PROJECT_PROJECT_ID\"" >> /root/.bashrc
export GOOGLE_CREDENTIALS=$(echo $INSTRUQT_GCP_PROJECT_GCP_PROJECT_SERVICE_ACCOUNT_KEY | base64 -d | jq 'tostring')
echo "export GOOGLE_CREDENTIALS=$GOOGLE_CREDENTIALS" >> /root/.bashrc
source /root/.bashrc
```

Optionally, echo credentials to ensure proper environment variables are populated:
```sh
echo "-------AWS-------" && echo "AWS Access Key = ${AWS_ACCESS_KEY_ID}" && echo "AWS Secret Key = $AWS_SECRET_ACCESS_KEY"
echo "-------GCP-------" && echo "GCP Project ${TF_VAR_project}" && echo "GCP Credentials = ${GOOGLE_CREDENTIALS}"
echo "-------Azure-------" && echo "Azure Client ID = ${ARM_CLIENT_ID}" && echo "Azure Subscription ID = ${ARM_SUBSCRIPTION_ID}" && echo "Azure Tenant ID = ${ARM_TENANT_ID}" && echo "Azure Client Secret = ${ARM_CLIENT_SECRET}"
```

## Provision with Terraform
Provision HashiCat across all 3 cloud providers:
```sh
git clone https://github.com/nickyoung-hashicorp/multi-hashicat.git
cd multi-hashicat
terraform init && terraform plan
terraform apply -auto-approve -parallelism=20
```

## Demo
Show 3 different web servers hosting the HashiCat image across AWS, Azure, and GCP.

## Destroy Infrastructure
```sh
terraform destroy -auto-approve
```

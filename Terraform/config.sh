terraform init

terraform plan -var-file="dev.tfvars"
terraform apply -var-file="dev.tfvars" -auto-approve

terraform plan -var-file="test.tfvars"
terraform apply -var-file="test.tfvars" -auto-approve

terraform plan -var-file="qa.tfvars"
terraform apply -var-file="qa.tfvars" -auto-approve

terraform plan -var-file="preprod.tfvars"
terraform apply -var-file="preprod.tfvars" -auto-approve

terraform plan -var-file="prod.tfvars"
terraform apply -var-file="prod.tfvars" -auto-approve

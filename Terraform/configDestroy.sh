terraform init


terraform workspace new dev
terraform workspace new test
terraform workspace new qa
terraform workspace new preprod
terraform workspace new prod

terraform workspace select dev
terraform init
terraform plan -var-file="dev.tfvars"
terraform destroy -var-file="dev.tfvars" -auto-approve

terraform workspace select test
terraform init
terraform plan -var-file="test.tfvars"
terraform destroy -var-file="test.tfvars" -auto-approve

terraform workspace select qa
terraform init
terraform plan -var-file="qa.tfvars"
terraform destroy -var-file="qa.tfvars" -auto-approve

terraform workspace select preprod
terraform init
terraform plan -var-file="preprod.tfvars"
terraform destroy -var-file="preprod.tfvars" -auto-approve

terraform workspace select prod
terraform init
terraform plan -var-file="prod.tfvars"
terraform destroy -var-file="prod.tfvars" -auto-approv

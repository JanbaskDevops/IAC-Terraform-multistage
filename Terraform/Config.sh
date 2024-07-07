### 4. Commands to Deploy:

- *Initialize Terraform*:

  sh
  terraform init
  

- *Plan and Apply for each environment*:

  sh
  terraform plan -var-file="dev.tfvars"
  terraform apply -var-file="dev.tfvars"

  terraform plan -var-file="test.tfvars"
  terraform apply -var-file="test.tfvars"

  terraform plan -var-file="qa.tfvars"
  terraform apply -var-file="qa.tfvars"

  terraform plan -var-file="preprod.tfvars"
  terraform apply -var-file="preprod.tfvars"

  terraform plan -var-file="prod.tfvars"
  terraform apply -var-file="prod.tfvars"

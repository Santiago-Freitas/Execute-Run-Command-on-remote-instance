Documentation will follow soon.

Usage:
1) Edit the variable files under var-config/. There is a variables file for each environment.
2) Run "terraform init"
3) Run "terraform apply -var-file=var-config/<file_name>.tfvars"

This will create 14 resources.

To delete the resources, run "terraform destroy -var-file=var-config/<file_name>.tfvars"

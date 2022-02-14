Usage:
1) Edit the variable files under var-config/. There is a variables file for each environment.
2) Run "terraform init"
3) Run "terraform apply -var-file=var-config/<file_name>.tfvars"

This will create 14 resources.

After you deploy, please access the email account provided in varible "email_to_notify". You will have an email from AWS to confirm that you want to subscribe to the SNS topic. You must confirm that you want to subscribe to receive emails with alerts in case the run-command fails.

To delete the resources, run "terraform destroy -var-file=var-config/<file_name>.tfvars"

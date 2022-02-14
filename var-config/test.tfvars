# region to deploy resources
aws_region = "eu-west-1"

# email to send notifications when run command fails
email_to_notify = "test@gmail.com"

# vars for ec2 instances
ami_id                                 = "ami-00ae935ce6c2aa534"
subnet_id_instance_1_name              = "subnet-7393ff2b"
subnet_id_instance_2_name              = "subnet-7393ff2b"
vpc_security_group_ids_instance_1_name = ["sg-02209bf4d343b0d55"]
vpc_security_group_ids_instance_2_name = ["sg-02209bf4d343b0d55"]

# how often to run event bridge rule; if you change to more than 1 minute, remember to change to minutes, i.e. "rate(60 minutes)"
schedule_expression = "rate(1 minute)"
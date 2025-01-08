# environment variables
region       = "us-west-1"
project_name = "cloud-consulting"
environment  = "dev"

# vpc variables
vpc_cidr                     = "10.0.0.0/16"
public_subnet_az1_cidr       = "10.0.0.0/24"
public_subnet_az2_cidr       = "10.0.1.0/24"
private_app_subnet_az1_cidr  = "10.0.2.0/24"
private_app_subnet_az2_cidr  = "10.0.3.0/24"

# ASG variables
asg_min              = 1
asg_max              = 4
asg_des_cap          = 2
lt_asg_ami           = "ami-0657605d763ac72a8"
lt_asg_instance_type = "t2.micro"

# acm variables
domain_name       = "eta-oko.com" # paste your domain name
alternative_names = ["*.eta-oko.com"] 

# route-53 variables
record_name = "www"
Creating an EC2 Instance with Terraform and Conditional Logic
This repository reuses an existing VPC. Please refer to the Sample Terraform Module GitHub repository for instructions on setting up the VPC.

This hands-on exercise focuses on creating an EC2 instance with conditional logic. Follow these steps:

Create a new GitHub repository or use an existing one.
Clone the repository locally and open it in VS Code.
Task: Use an existing VPC and subnet (leveraging data blocks) to create the EC2 instance. If no VPC exists, you can create one using a module. The EC2 configuration should include variables that allow conditional evaluation.
Variables to add in the variables.tf file:
is_production (boolean): Controls the size of the EC2 instance. If true, the instance type will be t2.small; if false, it will be t2.micro.
to_create (boolean): Determines whether to create the EC2 instance. If true, count = 1; if false, count = 0.
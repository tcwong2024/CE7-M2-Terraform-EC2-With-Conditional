variable "is_production" {
  default = true
}

variable "to_create" {
    default = true
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0b72821e2f351e396"
}

variable "ec2_name" {
  description = "Name of EC2"
  type        = string
  default     = "wtc-tf-ec2-conditional" # Replace with your preferred EC2 Instance Name 
}

variable "instance_type_small" {
  description = "EC2 Instance type"
  type        = string
  default     = "t2.small"
}

variable "instance_type_default" {
  description = "EC2 Instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of EC2 Key Pair"
  type        = string
  default     = "wtc-keypair-useast1" # Replace with your own key pair name (without .pem extension) that you have downloaded from AWS console previously
}

variable "sg_name" {
  description = "Name of EC2 security group"
  type        = string
  default     = "wtc-sg-tf-module" # Replace with your own preferred security group name that gives an overview of the security group coverage
}

variable "vpc_name" {
  description = "Name of VPC to use"
  type        = string
  default     = "wtc-vpc-tf-module" # Update with your own VPC name, found under VPC > your VPC > Tags > value of Name
}

variable "subnet_name" {
  description = "Name of subnet to use"
  type        = string
  default     = "wtc-vpc-tf-module-public-us-east-1a" # Update with your own Subnet name, found under VPC > your VPC > selected Public Subnet > tags > value of Name
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
  
}

data "aws_security_group" "existing_sg_name" {
  name = var.sg_name  # Security group name
}
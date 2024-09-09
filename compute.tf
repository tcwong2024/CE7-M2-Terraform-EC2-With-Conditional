resource "aws_instance" "wtc-tf-ec2-conditional" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.is_production ? var.instance_type_small : var.instance_type_default ## Option to choose instance type size
  key_name      = var.key_name
  subnet_id     = data.aws_subnet.selected_subnet.id
  associate_public_ip_address = true
  
  # vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  vpc_security_group_ids = [data.aws_security_group.existing_sg_name.id]  # Using existing security group

  ## Creates one EC2 if to_create == true
  count = var.to_create ? 1 : 0

  tags = {
    Name = var.ec2_name
  }
}

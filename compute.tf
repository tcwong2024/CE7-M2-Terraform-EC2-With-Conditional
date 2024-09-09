resource "aws_instance" "sample_ec2_variables" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = data.aws_subnet.selected_subnet.id
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  ## Creates one EC2 if to_create == true
  count = var.to_create ? 1 : 0

  tags = {
    Name = var.ec2_name
  }
}

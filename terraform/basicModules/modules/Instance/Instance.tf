#AWS EC2 Instance
resource "aws_instance" "my_ec2" {
  ami           = var.ec2_ami
  instance_type = var.ec2_size
  network_interface {
    network_interface_id = var.nic_id
    device_index         = 0
  }

  tags = var.ec2_name
}

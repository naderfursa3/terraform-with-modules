resource "aws_instance" "instance" {
    ami = var.instance_ami
    instance_type = var.instance_type
    availability_zone = var.availability_zone
    key_name = var.instance_key

    user_data = <<-EOF
        echo "This server has been created on $(date), by Terraform" > /var/creation_time.txt
    EOF

  tags = {
    "Name" = var.instance_name_tag
  }

}

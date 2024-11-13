# modules/ec2/main.tf

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  instance_count = var.instance_count
  tags = {
    Name = "TerraformInstance"
  }
}

output "public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.example.public_ip
}

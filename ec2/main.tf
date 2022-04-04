resource "aws_instance" "instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  tags = {
    Name         = "${var.project_name}-${var.env}-ec2"
    Environment  = var.env
  }
}

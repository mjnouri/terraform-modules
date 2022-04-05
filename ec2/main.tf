resource "aws_instance" "instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  tags = {
    Name         = "${var.project_name}-${var.env}-ec2"
    Environment  = var.env
  }
}

variable "ami" {
  default = ""
}

variable "instance_type" {
  default = ""
}

variable "env" {
  default = ""
}

variable "project_name" {
  default = ""
}

variable "key_name" {
  default = ""
}

resource "aws_security_group" "sg" {
  name = "${var.project_name}-${var.env}-sg"

  ingress {
    from_port   = var.ingress_port
    to_port     = var.ingress_port
    protocol    = var.ingress_protocol
    cidr_blocks = var.ingress_cidr
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

variable "ingress_port" {
  default = ""
}

variable "ingress_protocol" {
  default = ""
}

variable "ingress_cidr" {
  default = ""
}

output "sg" {
  value = aws_security_group.sg.id
}

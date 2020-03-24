provider "aws" {
  region = "eu-west-3"
}

data "aws_vpc" "default" {
  default = true
}
data "aws_security_group" "default" {
  name   = "default"
  vpc_id = data.aws_vpc.default.id
}

resource "aws_security_group" "covariant" {
  name = "terraform-example-instance"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "covariant" {
  ami                     = "ami-0a08edebc55d3bb93"
  instance_type           = "t2.micro"
  vpc_security_group_ids = [aws_security_group.covariant.id]
}

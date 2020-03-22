provider "aws" {
  region = "eu-west-3"
}

resource "aws_instance" "covariant" {
  ami           = "ami-0a08edebc55d3bb93"
  instance_type = "t2.micro"
}
resource "aws_security_group" "covariant" {
  name = "terraform-example-instance"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

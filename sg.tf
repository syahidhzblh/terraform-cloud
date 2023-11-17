resource "aws_security_group" "sg-cloud"{
  name = "allow-web-server"
  
  ingress{
    description = "Allow ssh"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress{
    description = "Allow http"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
    ingress{
    description = "Allow HTTPS"
    from_port = 433
    to_port = 433
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress{
  description = "Allow Internet"
  from_port = 0
  to_port = 0
  protocol = -1
  cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web-server"
  }
}

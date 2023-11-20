provider "aws"{
  region = "ap-southeast-2"
}

resource "aws_instance" "tf-cloud"{
  ami = "ami-0df4b2961410d4cff" #Ubuntu ami
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sg-cloud.id]

  tags = {
    Name = "ec2-tf-cloud"
  }
}

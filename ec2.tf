provider "aws"{
  region = "ap-southeast-2"
}

resource "aws_instance" "tf-cloud"{
  ami = "ami-0df4b2961410d4cff" #Ubuntu ami
  instance_type = "t2.micro"
  security_group = ["default"]

  tags = {
    Name = "tf-cloud"
  }
}
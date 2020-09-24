resource "aws_instance" "navneeth" {
  ami = "ami-00514a528eadbc95b"
  instance_type = "t2.micro"

  tags = {
    Name = "5StarsNavneeth-aws-ec2-instance"
    Env = "Prod"
  }
}

output "myawsserver-ip" {
  value = "${aws_instance.navneeth.public_ip}"
}


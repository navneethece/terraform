resource "aws_instance" "navneeth" {
  ami = "ami-0603cbe34fd08cb81"
  instance_type = "t2.micro"

  tags = {
    Name = "Navneeth-aws-ec2-instance"
    Env = "Prod"
  }
}

output "myawsserver-ip" {
  value = "${aws_instance.navneeth.public_ip}"
}


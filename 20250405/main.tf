resource "aws_security_group" "allow_ssh" {
    name = "curso-devops-ssh"
    description = "Allow SSH inbound traffic"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    tags = {
        Name = "curso-devops-ssh"
    }
}

resource "aws_instance" "web" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  key_name = "curso-educacionit"
  subnet_id = "subnet-0d01a35e2402dc50f"
  associate_public_ip_address = true
  security_groups = [
    resource.aws_security_group.allow_ssh.id
  ]

  depends_on = [
    resource.aws_security_group.allow_ssh
  ]

  tags = {
    Name = "curso-devops"
    ManagedBy = "terraform"
  }
}